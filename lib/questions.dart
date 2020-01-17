import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.lightBlue[100],
      highlightColor: Colors.pink[100],
      onTap: (){},
      child: Container(
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(questionText,
              style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
