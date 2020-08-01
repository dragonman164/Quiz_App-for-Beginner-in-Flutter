import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String AnswerText;
  Answer(this.selectHandler,this.AnswerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child : RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(AnswerText),
        onPressed: selectHandler,
      ),
    );
  }
}
