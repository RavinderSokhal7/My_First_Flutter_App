import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  var _questionIndex = 0;

  var _questions = ['Question 1','Questioin 2', 'Question 3'];

  void _answerButtonPressed(){
    setState(() {
      if(_questionIndex < _questions.length-1){
        _questionIndex++;
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Question(_questions[_questionIndex]),
            Divider(),
            Answer(_answerButtonPressed, "Answer 1"),
            Divider(),
            Answer(_answerButtonPressed, "Answer 2"),
            Divider(),
            Answer(_answerButtonPressed, "Answer 3"),
            Divider(),
          ],
        ),
      ),
    );
  }
}
