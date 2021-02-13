import 'package:flutter/material.dart';
import '../constrants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onCustomTap, @required this.buttonTitle});

  final Function onCustomTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCustomTap,
      child: Container(
        child: Center(
            child: Text(
              buttonTitle,
              style: kLargeButtonTextStyle,
            )),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}