import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.width,
      this.height,
      this.color,
      this.text,
      this.textColor});

  final double? width;
  final double? height;
  final String? text;
  final Color? color;
  final Color? textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(0.0),
        elevation: 8.0,
        child: MaterialButton(
          minWidth: width,
          height: height,
          onPressed: onPressed,
          child: Text(
            text ?? 'Button',
            style: TextStyle(
              color: textColor,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
