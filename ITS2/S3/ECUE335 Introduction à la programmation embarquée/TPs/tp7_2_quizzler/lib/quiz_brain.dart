import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  // Liste des questions et réponses stockées sous forme d'objets Question
  final List<Question> _questionBank = [
    Question('The sky is blue.', true),
    Question('Cats are mammals.', true),
    Question('Flutter is developed by Apple.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
