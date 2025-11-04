import 'package:flutter/material.dart';
import 'home_page.dart';
import 'edukasi_page.dart';
import 'quiz_page.dart';

void main() {
  runApp(const EduGiziApp());
}

class EduGiziApp extends StatelessWidget {
  const EduGiziApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EduGizi Kids',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: Colors.orange.shade50,
      ),
      home: const HomePage(),
      routes: {
        '/edukasi': (context) => const EdukasiPage(),
        '/quiz': (context) => const QuizPage(),
      },
    );
  }
}
