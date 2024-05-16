import 'package:flutter/material.dart';

class EntQueScreen extends StatelessWidget {

 final List<Map<String, dynamic>> questions = [
    {
      'question': 'What is film?',
      'options': ['Film', 'Movie', 'Cinema', 'Visual Storytelling'],
      'correctAnswerIndex': 0,
    },
    {
      'question': 'How many kapoors we have in Industry?',
      'options': ['26', '27', '28', '32'],
      'correctAnswerIndex': 1,
    },
        {
      'question': 'What is the capital of FilmCity?',
      'options': ['Panvel', 'YRF Studio', 'Goregaon', 'Capital'],
      'correctAnswerIndex': 2,
    },
        {
      'question': 'How many vowels in english Entertainment?',
      'options': ['3', '6', '5', '4'],
      'correctAnswerIndex': 3,
    },
        {
      'question': 'What do you want to be?',
      'options': ['Software Developer', 'Actor', 'Actress', 'Filmmaker'],
      'correctAnswerIndex': 4,
    },
        {
      'question': 'What is the your name?',
      'options': ['N', 'A', 'M', 'E'],
      'correctAnswerIndex': 5,
    },
     
  ];

  EntQueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(child:
         Text('Entertainment Quiz'),
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