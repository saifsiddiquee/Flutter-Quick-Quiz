import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer(this.selectHandler, this.answerText);
  final Function selectHandler;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.white60,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
