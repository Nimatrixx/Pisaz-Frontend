import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      this.width,
      this.height,
      this.padding = const EdgeInsets.all(8.0),
      this.rounded = false,
      this.radius = 8.0,
      this.color,
      this.child = const Text('Click'),
      this.textColor});

  final double? width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final bool rounded;
  final double radius;
  final Widget? child;
  final Color? color;
  final Color? textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Material(
        color: color,
        borderRadius: rounded ? BorderRadius.circular(radius) : null,
        elevation: 8.0,
        child: MaterialButton(
          minWidth: width,
          height: height,
          onPressed: onPressed,
          child: child,
        ),
      ),
    );
  }
}
