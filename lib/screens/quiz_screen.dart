import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/services/api_service.dart';
import 'package:trivia_quiz_app/models/question.dart';

class QuizScreen extends StatefulWidget {
  final String category;
  final String difficulty;

  const QuizScreen({required this.category, required this.difficulty});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Future<List<Question>> _futureQuestions;

  @override
  void initState() {
    super.initState();
    _futureQuestions =
        ApiService().fetchQuestions(widget.category, widget.difficulty);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.category} Quiz - ${widget.difficulty}'),
      ),
      body: FutureBuilder<List<Question>>(
        future: _futureQuestions,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No questions found.'));
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

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = widget.questions[_currentIndex];

    return Container(
      decoration: const BoxDecoration(
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
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              currentQuestion.question,
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...currentQuestion.answers.map((answer) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (answer == currentQuestion.correctAnswer) {
                      _score++;
                    }
                    if (_currentIndex < widget.questions.length - 1) {
                      setState(() {
                        _currentIndex++;
                      });
                    } else {
                      _showScoreDialog(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: Text(
                    answer,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              );
            }).toList(),
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
          title: const Text('Quiz Finished!'),
          content:
              Text('Your score is $_score out of ${widget.questions.length}.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _currentIndex = 0;
                  _score = 0;
                });
              },
              child: const Text('Retake'),
            ),
          ],
        );
      },
    );
  }
}
