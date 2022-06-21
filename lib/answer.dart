import 'package:flutter/material.dart';
import 'question.dart';

class Answers extends StatelessWidget {
  final VoidCallback answerQuestion;
  final String answers;
  Answers(this.answerQuestion, this.answers);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(30, 5, 30, 5),
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: answerQuestion,
          child: Text(answers),
        ));
  }
}
