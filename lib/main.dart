import 'package:flutter/material.dart';
import 'package:quick_quiz/quiz.dart';
import 'package:quick_quiz/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': ['Red', 'White', 'Blue', 'Black']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': ['Cat', 'Dog', 'Rabbit', 'Pigeon']
    },
    {
      'questionText': 'Who is your favourite athlete?',
      'answer': ['Ronaldo', 'Messi', 'Pele', 'Bolt']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'QUICK QUIZ',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
