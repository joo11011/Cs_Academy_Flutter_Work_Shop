import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  double amount;
  String currency;
  num fontSize;
  Color color;
  CustomText({
    Key? key,
    required this.amount,
    required this.currency,
    required this.fontSize,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          amount.toString(),
          style: TextStyle(
            color: color,
            fontSize: fontSize.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5),
        Text(
          currency,
          style: TextStyle(
            color: color,
            fontSize: fontSize.toDouble(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
