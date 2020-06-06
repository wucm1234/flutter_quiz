import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final String answerText;
  final Function chooseAnswer;

  Answer(this.chooseAnswer, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answerText),
        onPressed: chooseAnswer,
      ),
    );
  }
}
