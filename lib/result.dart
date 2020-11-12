import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.resultScore);
  final int resultScore;

  String get resultParse {
    var resultText = "Congrats! Buddy";
    if (resultScore <= 15){
      resultText = 'You are awesome!';
    } else if ( resultScore <=10){
      resultText = 'You are adorable!';
    } else if (resultScore <= 5){
      resultText = 'You are a dope man!';
    } else {
      resultText = 'Hey man! What are you?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: TextStyle(color: Colors.purple, fontSize: 24),
            children: [
              TextSpan(text: 'Congrats! You did it. \n'),
              TextSpan(
                text: resultParse,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
