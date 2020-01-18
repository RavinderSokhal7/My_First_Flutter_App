import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);
  @override
  Widget build(BuildContext context) {
    print(totalScore);
    String role;
    role = (totalScore > 28) ? 'You are Cool! You like action and adventure.' : (totalScore > 25) ? 'You are fun! You stay lite and humble. That\'s cool' : (totalScore>21) ? 'You have different taste!' : 'You are Evil!';
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Your Result :\n'+ role,
            style: TextStyle(fontSize: 28), textAlign: TextAlign.center),
      ),
    );
  }
}
