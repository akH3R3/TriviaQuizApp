class Question {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Question({required this.question, required this.answers, required this.correctAnswer});

  factory Question.fromJson(Map<String, dynamic> json) {
    List<String> answers = List<String>.from(json['incorrect_answers']);
    answers.add(json['correct_answer']);
    answers.shuffle(); 

    return Question(
      question: json['question'],
      answers: answers,
      correctAnswer: json['correct_answer'],
    );
  }
}
