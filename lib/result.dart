import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    var resultText = '';
    if (resultScore <= 8) {
      resultText = 'You\'re Awesome & Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You\'re Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You\'re Strange :(';
    } else {
      resultText = 'You\'re bad :(';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: const TextStyle(
                fontFamily: 'visby',
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color.fromARGB(255, 32, 38, 46),
                //backgroundColor: Color.fromARGB(255, 145, 49, 117),
              ),
            ),
            TextButton(
              onPressed: resetHandler,
              child: const Text(
                'Press here to RESET QUIZ',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'wellington',
                  color: Color.fromARGB(255, 205, 88, 136),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Lottie.asset(
              'assets/animation/resultPageAnimation.json',
              repeat: false,
            ),
          ],
        ),
      ),
    );
  }
}
