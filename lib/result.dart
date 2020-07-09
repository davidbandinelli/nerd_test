import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore == 0) {
      resultText = "Gravemente Insufficiente";
    } else if (resultScore <= 5) {
      resultText = "Insufficiente";
    } else if (resultScore <= 10) {
      resultText = "Mediocre";
    } else if (resultScore <= 15) {
      resultText = "Sufficiente";
    } else if (resultScore <= 20) {
      resultText = "Discreto";
    } else if (resultScore <= 25) {
      resultText = "Buono";
    } else if (resultScore <= 29) {
      resultText = "Ottimo";
    } else {
      resultText = "Fantastico !!!";
    }
    print("result=" + resultScore.toString());
    return "Hai risposto correttamente a " + resultScore.toString() + " domande ... " + resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase, 
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}