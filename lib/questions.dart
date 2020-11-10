import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question({@required this.questionText});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
