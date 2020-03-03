import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... Strange!';
    } else {
      resultText = 'You are so Bad!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          textColor: Colors.redAccent,
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
