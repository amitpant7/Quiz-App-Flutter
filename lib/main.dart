// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';
import 'package:quizapp/result.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  static const _questions = [
    {
      'question': 'What\'s Your Faviroute Color ?',
      'answer': ['Red', 'Green', 'Black', 'Yellow']
    },
    {
      'question': 'What\'s Your Faviroute Number ?',
      'answer': ['7', '6', '5', '9']
    },
    {
      'question': 'Do You like going out?',
      'answer': ['Yes', 'No']
    },
    {
      'question': 'Do You have a Discord?',
      'answer': ['Yes', 'No', 'I don\'t use social Media']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : const Result(),
    ));
  }
}
