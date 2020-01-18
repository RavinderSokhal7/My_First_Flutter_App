import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerButtonPressed;
  //var score;

  Quiz({
    @required this.questionIndex,
    @required this.questions,
    @required this.answerButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            handler: () => answerButtonPressed(answer['score']),
            ans: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
