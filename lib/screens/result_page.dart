import 'package:flutter/material.dart';
import 'package:flutter_bmi/components/bottom_button.dart';
import 'package:flutter_bmi/constrants.dart';
import 'file:///C:/Users/ASUS/AndroidStudioProjects/flutter_bmi/lib/components/icon_content.dart';
import '../components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiAdvice,this.resultText,this.bmiResult});

  final String bmiResult;
  final String resultText;
  final String bmiAdvice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text("Your result", style: kTitleTextStyle),
              )),
          Expanded(
            flex: 5,
            child: ReusableContainer(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    bmiAdvice,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onCustomTap: () {
                Navigator.pop(context);
              },
              buttonTitle: "RE-CALCULATE"
          )
        ],
      ),
    );
  }
}
