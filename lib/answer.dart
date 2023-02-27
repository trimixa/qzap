import 'dart:ui';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 205, 88, 136),
          foregroundColor: const Color.fromARGB(255, 233, 232, 232),
        ),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style:
              const TextStyle(fontFamily: 'visby', fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
