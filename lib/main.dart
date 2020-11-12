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
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 10},
        {'text': 'Blue', 'score': 6},
        {'text': 'Black', 'score': 9},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Cat', 'score': 8},
        {'text': 'Dog', 'score': 9},
        {'text': 'Rabbit', 'score': 6},
        {'text': 'Pigeon', 'score': 4},
      ]
    },
    {
      'questionText': 'Who is your favourite athlete?',
      'answer': [
        {'text': 'Ronaldo', 'score': 10},
        {'text': 'Messi', 'score': 10},
        {'text': 'Pele', 'score': 8},
        {'text': 'Bolt', 'score': 9},
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore),
      ),
    );
  }
}
