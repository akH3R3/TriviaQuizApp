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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Center(child: Text('Trivia Quiz App',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),)),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.green[200], // Set background color to greenAccent
          ),
          child: SingleChildScrollView( // Wrap the column with SingleChildScrollView
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  'lib/images/home.png', // Adjust the path according to your project structure
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20),
                ...categories.map((category) {
                  return GestureDetector(
                    onTap: () {
                      // Navigate to the difficulty screen when category is tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DifficultyScreen(category: category),
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              _getIconForCategory(category), // Get icon for category
                              size: 40,
                              color: Colors.indigo, // Set icon color to indigo
                            ),
                            Text(
                              category,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo, // Set text color to indigo
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

  // Function to get icon for each category
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
