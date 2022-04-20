import 'package:flutter/material.dart';

class ShowBmiResult extends StatefulWidget {
  var bmi;

  ShowBmiResult(this.bmi);

  @override
  State<ShowBmiResult> createState() => _ShowBmiResultState();
}

class _ShowBmiResultState extends State<ShowBmiResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Your BMI Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          // child: Text("${widget.bmi.toStringAsFixed(2)}"),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.network(
                  "https://i2.wp.com/www.tapasvan.me/wp-content/uploads/2021/05/bmi.jpg?w=600&ssl=1"),
              SizedBox(
                height: 15,
              ),
              Text(
                "Your BMI is ${widget.bmi.toStringAsFixed(2)}",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Text(
                widget.bmi <= 18.5
                    ? 'You are Underweight'
                    : widget.bmi <= 24.9
                    ? "You are Normal"
                    : widget.bmi <= 29.9
                    ? "You are Overweight"
                    : widget.bmi <= 34.9
                    ? "You are Obese"
                    : "You are Extremley Obese",
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10)),
              Text(
                widget.bmi <= 18.5
                    ? 'Suggestion: !Opps Eat Well and Increase some weight.'
                    : widget.bmi <= 24.9
                    ? "Suggestion: Hurrey! your BMI is Normal."
                    : widget.bmi <= 29.9
                    ? "Suggestion: You are Fine but Please reduce some of your weight"
                    : widget.bmi <= 34.9
                    ? "Suggestion: please reduce your overweight"
                    : "Suggestion: You are too weight Please reduce your overweight",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
