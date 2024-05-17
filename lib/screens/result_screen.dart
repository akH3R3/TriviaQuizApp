import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;

  ResultScreen({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Results')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Congratulations!', style: TextStyle(fontSize: 24)),
            Text('Your Score: $score', style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              child: Text('Go to Home'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Retake Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
