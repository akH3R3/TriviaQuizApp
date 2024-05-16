import 'package:flutter/material.dart';

class SportsQueScreen extends StatelessWidget {

 final List<Map<String, dynamic>> questions = [
    {
      'question': 'How many sports do you like?',
      'options': ['0', '4', '8', '16'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'How many IITs have all sports facilities?',
      'options': ['1', '2', '3', '4'],
      'correctAnswerIndex': 1,
    },
        {
      'question': 'What is the most important thing for any sports?',
      'options': ['Practice', 'Obsession', 'Discipline', 'Strength'],
      'correctAnswerIndex': 2,
    },
        {
      'question': 'How many vowels in english Sports?',
      'options': ['1', '6', '5', '4'],
      'correctAnswerIndex': 3,
    },
        {
      'question': 'Which sport do you like most?',
      'options': ['Cricket', 'Football', 'Tennis', 'Badminton'],
      'correctAnswerIndex': 4,
    },
        {
      'question': 'KOHLI or DHONI?',
      'options': ['Yellow', 'Bole Jo Koyal', '7', 'Dhoni'],
      'correctAnswerIndex': 5,
    },
     
  ];

  SportsQueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child:
         Text('Sports Quiz'),
         ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              questions[0]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
              },
              child: Text(questions[0]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: Text(questions[0]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () {
              },
              child: Text(questions[0]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[0]['options'][3]),
            ),

            Text(
              questions[1]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[1]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[1]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[1]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[1]['options'][3]),
            ),

            Text(
              questions[2]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[2]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[2]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[2]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[2]['options'][3]),
            ),

            Text(
              questions[3]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[3]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[3]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[3]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[3]['options'][3]),
            ),

            Text(
              questions[4]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[4]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[4]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[4]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[4]['options'][3]),
            ),
                 Text(
              questions[5]['question'],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[5]['options'][0]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[5]['options'][1]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[5]['options'][2]),
            ),
            ElevatedButton(
              onPressed: () { 
              },
              child: Text(questions[5]['options'][3]),
            ),



          ],
        ),
      ),
    );
  }
}