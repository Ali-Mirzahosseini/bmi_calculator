import 'dart:math';

class CalculateBrain {
  CalculateBrain({required this.weight, required this.height});
  final int weight;
  final int height;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Eat less and exercise more 🏃‍';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep it going, mate 💪';
    } else {
      return 'You have a lower than normal body weight. You should eat more 🍗';
    }
  }
}
