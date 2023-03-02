import 'package:flutter/material.dart';
import 'package:qzap/answer.dart';
import 'package:qzap/question.dart';
import 'package:lottie/lottie.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: [
              Question(
                questions[questionIndex]['questionText'] as String,
              ),
              ...(questions[questionIndex]['answers']
                      as List<Map<String, Object>>)
                  .map((answer) {
                return Answer(() => answerQuestion(answer['score']),
                    answer['text'] as String);
              }).toList(),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: Lottie.asset(
            questions[questionIndex]['animation'] as String,
            repeat: false,
          ),
        ),
      ],
    );
  }
}
