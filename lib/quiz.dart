import 'package:flutter/cupertino.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function chooseAnswer;

  Quiz({
    @required this.questionIndex, @required this.chooseAnswer,
    @required this.questions

});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Question(questions[questionIndex]['questionText'],),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => chooseAnswer(answer['score']), answer['text']);
        }) .toList()


      ],
    );
  }
}
