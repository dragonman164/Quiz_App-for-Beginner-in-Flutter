import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore,this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if(resultScore <= 8)
      resultText = 'You are awesome and innocent!';
    else if(resultScore <= 12)
      resultText = 'Pretty Likeable!';
    else if(resultScore <=16)
    resultText = 'You are ....strange';
    else
      resultText = 'You are so bad!';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!!!!'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
