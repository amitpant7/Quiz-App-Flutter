import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.questionIndex,
      required this.questions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionIndex, questions),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answers(answerQuestion, answer);
        }),
      ],
    );
  }
}
