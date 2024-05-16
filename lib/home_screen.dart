import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/business_q.dart';
import 'package:trivia_quiz_app/ent_q.dart';
import 'package:trivia_quiz_app/mixed_q.dart';
import 'package:trivia_quiz_app/sports_q.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('T R I V I A   Q U I Z')),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 70.0),
            const Text("Choose Category", 
            style: TextStyle(
              fontSize: 20,
            ),),
            const SizedBox(height: 70.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SportsQueScreen()),
                );
              },
              child: Text('Sports Quiz'),
            ),

            const SizedBox(height: 70.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntQueScreen()),
                );
              },
              child: Text('Entertainment Quiz'),
            ),

            const SizedBox(height: 70.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusinessQueScreen()),
                );
              },
              child: Text('Business Quiz'),
            ),

            const SizedBox(height: 70.0),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MixedQueScreen()),
                );
              },
              child: Text('Mixed Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
