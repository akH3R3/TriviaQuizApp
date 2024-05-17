import 'package:flutter/material.dart';
import 'package:trivia_quiz_app/screens/difficulty_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    'General Knowledge',
    'Film',
    'Books',
    'Video Games',
    'Computer',
    'Maths',
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: const Center(
              child: Text(
            'Trivia Quiz App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green[200],
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'lib/images/home.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                ...categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DifficultyScreen(category: category),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              _getIconForCategory(category),
                              size: 40,
                              color: Colors.indigo,
                            ),
                            Text(
                              category,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconData _getIconForCategory(String category) {
    switch (category) {
      case 'General Knowledge':
        return Icons.lightbulb_outline;
      case 'Film':
        return Icons.movie;
      case 'Books':
        return Icons.book;
      case 'Video Games':
        return Icons.videogame_asset;
      case 'Computer':
        return Icons.computer;
      case 'Maths':
        return Icons.calculate;
      default:
        return Icons.category;
    }
  }
}
