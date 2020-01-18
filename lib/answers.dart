import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String ans;
  //int score;
  Answer({
    @required this.handler,
    @required this.ans,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 75,
        child: RaisedButton(
          color: Colors.pink[100],
          splashColor: Colors.purple[200],
          child: Text(ans),
          onPressed: handler,
        ),
      ),
    );
  }
}
