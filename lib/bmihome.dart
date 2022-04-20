import 'package:bmi_calculator/calculator.dart';
import 'package:bmi_calculator/showresult.dart';
import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
  const BmiHome({Key? key}) : super(key: key);

  @override
  State<BmiHome> createState() => _BmiHomeState();
}

class _BmiHomeState extends State<BmiHome> {
  bool isMale = true;
  int weight = 60;
  int age = 20;
  double height = 90;
  var bmi;
  TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        title: Center(child: Text("BMI Calculator")),
        backgroundColor: Color(0xff0A0E21),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.all(15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: isMale == true ? Colors.teal : Color(0xff4C4E5F),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style:
                            TextStyle(color: Colors.white60, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color:
                        isMale == false ? Colors.teal : Color(0xff4C4E5F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 50,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style:
                            TextStyle(color: Colors.white60, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xff4C4E5F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        "${height.toStringAsFixed(0)}",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(fontSize: 20, color: Colors.white70),
                      ),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                          thumbColor: Colors.yellow,
                          activeTrackColor: Colors.pink,
                          inactiveTrackColor: Colors.grey),
                      child: Slider(
                          min: 50,
                          max: 230,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          })),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white60, fontSize: 18),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 35),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (weight > 0) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                                ;
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: TextStyle(color: Colors.white60, fontSize: 18),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              fontSize: 35),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (age > 0) {
                                  setState(() {
                                    age--;
                                  });
                                }
                                ;
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                if (age < 120) {
                                  setState(() {
                                    age++;
                                  });
                                }
                                ;
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 25,
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.pink,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                final cal =
                Calculation(age: age, height: height, weight: weight);
                bmi = cal.getResult();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ShowBmiResult(bmi)));

                // showDialog(
                //   context: context,
                //   builder: (context) => new AlertDialog(
                //     title: new Text('Your BMI is ${bmi.toStringAsFixed(0)}'
                //         ),
                //     content: Text(bmi > 25
                //         ? 'You are OverWeight'
                //         : bmi > 18
                //             ? "You are Normal"
                //             : "You are Underweight"),
                //     actions: <Widget>[
                //       new FlatButton(
                //         onPressed: () {
                //           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowBmiResult(bmi))) // dismisses only the dialog and returns nothing
                //         },
                //         child: new Text('OK'),
                //       ),
                //     ],
                //   ),
                // );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Calculator",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
