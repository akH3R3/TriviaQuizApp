import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/screens/quiz_screen.dart';

class DifficultyScreen extends StatelessWidget {
  final String category;

  DifficultyScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Center(
          child: Text('$category Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green], // Gradient colors
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Choose Difficulty',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              _buildDifficultyButton(context, 'Easy', Colors.green),
              SizedBox(height: 20),
              _buildDifficultyButton(context, 'Medium', Colors.orange),
              SizedBox(height: 20),
              _buildDifficultyButton(context, 'Hard', Colors.red),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDifficultyButton(BuildContext context, String difficulty, Color color) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to the quiz screen when difficulty is selected
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => QuizScreen(category: category, difficulty: difficulty),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        primary: color, // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        difficulty,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
