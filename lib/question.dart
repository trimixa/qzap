import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(60),
      child: Text(
        questionText,
        style: const TextStyle(
          color: Color.fromARGB(255, 205, 88, 136),
          fontSize: 20,
          fontFamily: 'wellington',
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
