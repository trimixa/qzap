import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;
  Result(this.resultScore, this.resetHandler, {Key? key}) : super(key: key);

  String get resultPhrase {
    var resultText = '';
    if (resultScore <= 8) {
      resultText = 'Awesome & Innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'Strange!!!';
    } else {
      resultText = 'You bad!!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style:
                const TextStyle(fontFamily: 'visby', fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetHandler, child: const Text('RESET QUIZ'))
        ],
      ),
    );
  }
}
