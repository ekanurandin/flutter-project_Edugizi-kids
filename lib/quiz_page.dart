import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _score = 0;
  int _currentQuestion = 0;

  final List<Map<String, Object>> _questions = [
    {
      'question': '1. Apa yang termasuk makanan bergizi seimbang?',
      'answers': [
        {'text': 'Keripik dan soda', 'correct': false},
        {'text': 'Sayur dan buah', 'correct': true},
        {'text': 'Permen dan coklat', 'correct': false},
      ],
    },
    {
      'question': '2. Mengapa penting makan sayur?',
      'answers': [
        {'text': 'Karena warnanya cantik', 'correct': false},
        {'text': 'Karena mengandung vitamin dan serat', 'correct': true},
        {'text': 'Karena murah', 'correct': false},
      ],
    },
  ];

  void _answerQuestion(bool correct) {
    if (correct) _score++;
    if (_currentQuestion < _questions.length - 1) {
      setState(() {
        _currentQuestion++;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Hasil Kuis'),
        content: Text('Skor kamu: $_score / ${_questions.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _score = 0;
                _currentQuestion = 0;
              });
            },
            child: const Text('Ulangi'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = _questions[_currentQuestion];
    return Scaffold(
      appBar: AppBar(title: const Text('Kuis Gizi')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              currentQ['question'] as String,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...(currentQ['answers'] as List<Map<String, Object>>).map((ans) {
              return ElevatedButton(
                onPressed: () => _answerQuestion(ans['correct'] as bool),
                child: Text(ans['text'] as String),
              );
            }),
          ],
        ),
      ),
    );
  }
}
