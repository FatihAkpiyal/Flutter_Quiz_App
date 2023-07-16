import 'package:flutter/material.dart';
import 'package:staj_projesi/constant.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: neutral, borderRadius: BorderRadius.circular(10.0)),
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        "Next Question",
        textAlign: TextAlign.center,
      ),
    );
  }
}
