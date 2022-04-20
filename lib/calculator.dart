import 'dart:math';
import 'package:flutter/material.dart';

class Calculation {
  int? age, weight;
  double? height;
  Calculation({this.age, this.height, this.weight});

  getResult() {
    final bmi = weight! / pow(height! / 100, 2);
    print("Your BMI is $bmi");
    return bmi;
  }

//  valueheight=(((valuefeet*12)+valueinches)*2.54);  // Converting to Centimeters.
//       valueheightmeters = valueheight / 100;           // Converting to meters.
//       bmi = (valueweight / (valueheightmeters * valueheightmeters));
}
