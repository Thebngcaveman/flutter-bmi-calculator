import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({@required this.color, this.cardChild, this.onCustomPress});
  final Color color;
  final Widget cardChild;
  final Function onCustomPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCustomPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}