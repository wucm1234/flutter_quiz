import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var question_index = 0;
  int total_score = 0;

  void chooseAnswer(score){
    total_score += score;
    setState(() {
      question_index++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('quiz'),
          ),
        body: question_index < _questions.length ?
        Container(
          child: Quiz(questionIndex: question_index, chooseAnswer: chooseAnswer, questions: _questions)
        ): Column(
          children: [
            Center(child : Text(total_score.toString())),
            RaisedButton(
              child: Text('reset'),
              onPressed: (){
                setState(() {
                  question_index = 0;
                  total_score = 0;
                });
              },
            )
          ],
        ),
      ),

    );
  }
}

