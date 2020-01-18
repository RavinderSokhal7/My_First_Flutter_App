import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);
  @override
  Widget build(BuildContext context) {
    print(totalScore);
    String role;
    role = (totalScore > 28) ? 'You are Cool! You like action and adventure.' : (totalScore > 25) ? 'You are fun! You stay lite and humble. That\'s cool' : (totalScore>21) ? 'You have different taste!' : 'You are Evil!';
    return Column(
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Your Result :\n' + role,
                style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
          ),
        ),
        Divider(),
        FlatButton(
          child: Text("Restart Quiz!",
              style: TextStyle(fontSize: 14), textAlign: TextAlign.center),
          onPressed: resetQuiz,
          splashColor: Colors.purpleAccent,
        )
      ],
    );
  }
}
