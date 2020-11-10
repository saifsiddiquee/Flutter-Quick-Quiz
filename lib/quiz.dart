import 'package:flutter/material.dart';

import 'answer.dart';
import 'questions.dart';

class Quiz extends StatelessWidget {
  Quiz({@required this.answerQuestion, @required this.questions, @required this.questionIndex});

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answer'] as List<String>)
            .map((ans) {
          return Answer(answerQuestion, ans);
        }).toList()
      ],
    );
  }
}
