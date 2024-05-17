import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/services/api_service.dart';
import 'package:trivia_quiz_app/models/question.dart';
import 'dart:async';

class QuizScreen extends StatefulWidget {
  final String category;
  final String difficulty;

  QuizScreen({required this.category, required this.difficulty});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Future<List<Question>> _futureQuestions;

  @override
  void initState() {
    super.initState();
    _futureQuestions = ApiService().fetchQuestions(widget.category, widget.difficulty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('${widget.category} Quiz',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: FutureBuilder<List<Question>>(
        future: _futureQuestions,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No questions found.'));
          } else {
            return QuizBody(questions: snapshot.data!);
          }
        },
      ),
    );
  }
}

class QuizBody extends StatefulWidget {
  final List<Question> questions;

  QuizBody({required this.questions});

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {
  int _currentIndex = 0;
  int _score = 0;
  bool _isAnswered = false;
  bool _isCorrect = false;
  late Timer _timer;
  int _timeLeft = 30; // 30 seconds for each question

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timeLeft = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeLeft > 0) {
          _timeLeft--;
        } else {
          _timer.cancel();
          _showNextQuestion();
        }
      });
    });
  }

  void _showNextQuestion() {
    if (_currentIndex < widget.questions.length - 1) {
      setState(() {
        _currentIndex++;
        _isAnswered = false;
        _startTimer();
      });
    } else {
      _timer.cancel();
      _showScoreDialog(context);
    }
  }

  void _showPreviousQuestion() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
        _isAnswered = false;
        _startTimer();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = widget.questions[_currentIndex];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question ${_currentIndex + 1} of ${widget.questions.length}',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Time left: $_timeLeft seconds',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(height: 20),
            ...currentQuestion.answers.map((answer) {
              Color buttonColor;
              if (_isAnswered) {
                if (answer == currentQuestion.correctAnswer) {
                  buttonColor = Colors.green;
                } else if (answer == currentQuestion.correctAnswer) {
                  buttonColor = Colors.red;
                } else {
                  buttonColor = Colors.grey;
                }
              } else {
                buttonColor = Colors.deepPurple;
              }
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (!_isAnswered) {
                      setState(() {
                        _isAnswered = true;
                        _isCorrect = answer == currentQuestion.correctAnswer;
                        if (_isCorrect) {
                          _score++;
                        }
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: buttonColor,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text(
                    answer,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: _currentIndex > 0 ? _showPreviousQuestion : null,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text('Previous', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
                ElevatedButton(
                  onPressed: _isAnswered ? _showNextQuestion : null,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text('Next', style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showScoreDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Quiz Finished!'),
          content: Text('Your score is $_score out of ${widget.questions.length}.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: Text('Home'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _currentIndex = 0;
                  _score = 0;
                  _isAnswered = false;
                  _isCorrect = false;
                  _startTimer();
                });
              },
              child: Text('Retake'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}
