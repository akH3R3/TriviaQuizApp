import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trivia_quiz_app/models/question.dart';

class ApiService {
  Future<List<Question>> fetchQuestions(String category, String difficulty) async {
    // Map categories to API category IDs
    final categoryMap = {
      'General Knowledge': 9,
      'Film': 11,
      'Books': 10,
      'Video Games': 15,
      'Computer': 18,
      'Maths': 19,
    };

    final categoryId = categoryMap[category];

    // Create the URL
    final Uri url = Uri.parse(
      'https://opentdb.com/api.php?amount=10&category=$categoryId&difficulty=${difficulty.toLowerCase()}&type=multiple',
    );

    // Make the API request
    final response = await http.get(url);

    // Check the response status and parse the JSON data
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonData = json.decode(response.body);
      final List<dynamic> data = jsonData['results'];
      print('API Response: ${jsonData.toString()}'); // Debugging: print the API response
      return data.map((question) => Question.fromJson(question)).toList();
    } else {
      throw Exception('Failed to load questions');
    }
  }
}
