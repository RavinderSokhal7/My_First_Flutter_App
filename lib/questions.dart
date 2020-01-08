import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(questionText, 
                  style: TextStyle(fontSize: 28),
                  textAlign: TextAlign.center 
                  ),
    );
  }
}
