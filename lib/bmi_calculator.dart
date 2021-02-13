import 'dart:math';

class BMICalculator{
  BMICalculator({this.weight,this.height});

  final int height;
  final int weight;

  double _bmi = 0;

  String calculateBMI(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getHeight(){
    return height.toString();
  }
  String getWeight(){
    return weight.toString();
  }

  String getResult(){
    if(_bmi >= 25.0){
      return 'Overweight';
    }
    else if(_bmi > (18.5)){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }

  String getAdvice(){
    if(_bmi >= 25){
      return 'You have a more weight than normal body weight. Try eating less and do more exercise';
    }
    else if(_bmi >18.5){
      return 'You have a normal body.Stay in shape,pal';
    }
    else{
      return 'You are underweight.Eat some more you little man';
    }
  }
}