import 'package:flutter/material.dart';

class BaseText extends StatelessWidget {
  final String text;
  final double fontSize;
  final bool isBold;
  final Color color;
  final bool withShadow;

  BaseText({
    this.text = 'null',
    this.fontSize = 14,
    this.isBold = false,
    this.color = Colors.white,
    this.withShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    List<Shadow> textShadows = [
      Shadow(
        color: Colors.black,
        blurRadius: 5,
        offset: Offset(1, 1),
      )
    ];

    return Text(
      this.text,
      style: TextStyle(
        height: 1,
        color: this.color,
        fontSize: this.fontSize,
        fontWeight: this.isBold ? FontWeight.bold : FontWeight.normal,
        fontFamily: 'Montserrat',
        shadows: this.withShadow ? textShadows : null,
      ),
    );
  }
}
