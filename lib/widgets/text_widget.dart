import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double fontSize;

  const TextWidget({
    Key? key,
    required this.text,
    this.color,
    this.fontSize = 18,
    this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.white,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize,
      ),
    );
  }
}
