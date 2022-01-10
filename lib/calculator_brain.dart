import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

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

  String getInterPretaion() {
    if (_bmi >= 25) {
      return 'You may be advised to lose some weight for health reasons. You are recommended to talk to your doctor or a dietitian for advice.';
    } else if (_bmi > 18.5) {
      return 'You are at a healthy weight for your height. By maintaining a healthy weight, you lower your risk of developing serious health problems';
    } else {
      return 'You are recommended to ask your doctor or a dietitian for advice';
    }
  }
}
