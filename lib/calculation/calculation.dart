import 'dart:math';

class Calculation {
  final int height;
  final int weight;
  double? _bmi;

  Calculation({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String bmiResult() {
    if (_bmi! >= 25) {
      print(_bmi);
      return 'OverWeight';
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      print(_bmi);

      return 'UnderWeight';
    }
  }

  String bmiFeedback() {
    if (_bmi! >= 25) {
      return 'Your weight is higher than normal. Excercise now';
    } else if (_bmi! > 18.5) {
      return "Your weight is normal . Keep it on";
    } else {
      return 'Your weight is lower than normal. Eat more';
    }
  }
}
