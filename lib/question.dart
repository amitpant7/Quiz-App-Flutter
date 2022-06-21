import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int _questionIndex;
  final questions;
  Question(this._questionIndex, this.questions, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      child: Text((questions[_questionIndex]['question']).toString(),
          style: const TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red)),
    );
  }
}
