import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'Which is your Fav TV series?',
      'answers': [
        {'text': 'Friends', 'score': 8},
        {'text': 'Breaking Bad', 'score': 10},
        {'text': 'How I Met Your Mother', 'score': 8},
        {'text': 'DeathNote', 'score': 6}
      ]
    },
    {
      'questionText': 'Which is your Fav Genre?',
      'answers': [
        {'text': 'RomCom', 'score': 8},
        {'text': 'Horror', 'score': 6},
        {'text': 'Action', 'score': 10},
        {'text': 'Adventure', 'score': 9},
        {'text': 'Anime', 'score': 6}
      ]
    },
    {
      'questionText': 'Do you like dogs?',
      'answers': [
        {'text': 'Yes', 'score': 10},
        {'text': 'No', 'score': -10}
      ]
    },
  ];

  void _answerButtonPressed(int score) {
    setState(() {
      if (_questionIndex < _questions.length) {
        _totalScore += score;
        _questionIndex = (_questionIndex + 1); // % _questions.length;
      }
    });
    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questionIndex: _questionIndex,
                answerButtonPressed: _answerButtonPressed,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
