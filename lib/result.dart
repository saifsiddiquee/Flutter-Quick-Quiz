import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({this.resultScore, this.resetHandler});
  final int resultScore;
  final Function resetHandler;

  String get resultParse {
    var resultText = '';
    if (resultScore <= 10) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 8) {
      resultText = 'You are adorable!';
    } else if (resultScore <= 5) {
      resultText = 'You are a dope man!';
    } else {
      resultText = 'Hey man! What are you?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(color: Colors.purple, fontSize: 24),
                children: [
                  TextSpan(text: 'Congrats! You did it. \n'),
                  TextSpan(
                    text: resultParse,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          ),
          GestureDetector(
            onTap: resetHandler,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Restart Quiz',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16.0,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
