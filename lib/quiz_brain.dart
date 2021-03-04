import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        'Only character or integer can be used in switch statement.', false),
    Question('The return type of malloc function is void.', false),
    Question(
        'The ++ operator increments the operand by 1, whereas, the -- operator decrements it by 1.',
        true),
    Question(
        'It is necessary that a loop counter must only be an int. It cannot be a float.',
        false),
    Question(
        'A zero value is considered to be false and a non-zero value is considered to be true.',
        true),
    Question('The keywords cannot be used as variable names.', true),
    Question(
        'sizeof( ) is a function that returns the size of a variable.', false),
    Question('continue keyword skip one iteration of loop.', true),
    Question(
        'Two case constants within the same switch statement can have the same value.',
        false),
    Question(
        'A file opened for writing already exists its contents would be overwritten.',
        true),
    Question('Switch statement can have any number of case instances.', true),
    Question('Structure is collection of dissimilar data types.', true),
    Question(
        'A do-while loop is used to ensure that the statements within the loop are executed at least twice.',
        false),
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
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}

//TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

//TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

//TODO: Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
