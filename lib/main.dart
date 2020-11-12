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
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 5},
        {'text': 'Blue', 'score': 4},
        {'text': 'Black', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answer': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 5},
        {'text': 'Rabbit', 'score': 2},
        {'text': 'Pigeon', 'score': 4},
      ]
    },
    {
      'questionText': 'Who is your favourite athlete?',
      'answer': [
        {'text': 'Ronaldo', 'score': 4},
        {'text': 'Messi', 'score': 4},
        {'text': 'Pele', 'score': 1},
        {'text': 'Bolt', 'score': 5},
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

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
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
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
      ),
    );
  }
}
