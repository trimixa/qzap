import 'package:flutter/material.dart';
import 'package:qzap/answer.dart';
import 'package:qzap/question.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'What\'s your favourite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        backgroundColor: const Color.fromARGB(255, 233, 232, 232),
        appBar: AppBar(
          toolbarHeight: 0,
          backgroundColor: const Color.fromARGB(255, 32, 38, 46),
          // foregroundColor: const Color.fromARGB(255, 255, 251, 245),
          // title: Container(
          //   alignment: Alignment.center,
          //   child: const Text(
          //     'Welcome to QZAP',
          //     style: TextStyle(fontFamily: 'wellington'),
          //   ),
          // ),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
