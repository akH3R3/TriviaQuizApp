import 'package:flutter/material.dart';

class BusinessQueScreen extends StatelessWidget {

 final List<Map<String, dynamic>> questions = [
    {
      'question': 'How many letters in Business?',
      'options': ['2', '4', '6', '8'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'Best institute in India for Business?',
      'options': ['IIT', 'IIM', 'NIT', 'BITS'],
      'correctAnswerIndex': 1,
    },
        {
      'question': 'What is capital in Business?',
      'options': ['Capital', 'Delhi', 'Pakistan', 'Money'],
      'correctAnswerIndex': 2,
    },
        {
      'question': 'How many vowels in Business?',
      'options': ['3', '6', '5', '4'],
      'correctAnswerIndex': 3,
    },
        {
      'question': 'What Business brings?',
      'options': ['Freedom', 'Money', 'Stress', 'Investor'],
      'correctAnswerIndex': 4,
    },
        {
      'question': 'Want to be an entrenpuer?',
      'options': ['Nahh', 'May be', 'Yusssss', 'Abba nahi manenge'],
      'correctAnswerIndex': 5,
    },
     
  ];

  BusinessQueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child:
         Text('Business Quiz'),
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