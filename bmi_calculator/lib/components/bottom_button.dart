import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;

  BottomButton({required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonText,
          style: kLargeButtonTextStyle,
        )),
        padding: const EdgeInsets.only(bottom: 20.0),
        color: kBottomButtonColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
