// ignore_for_file: unused_field, prefer_final_fields

import 'question.dart';

class QuizBrain {
  List<Question> _questionBank = [
    Question('You can lead a cow down stairs but not up stairs .', false),
    Question(
        'Approximately one quarter of human bones are in the feet .', true),
    Question('A slug\'s blood is green.', true),
  ];
  int _questionNumber = 0;

  nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
