import 'package:flutter/material.dart';

class ColorTransformBox extends StatelessWidget {
  const ColorTransformBox({
    required this.width,
    required this.height,
    required this.backgroundColor,
    required this.borderColor,
    Key? key,
  }) : super(key: key);

  final double width;
  final double height;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.elliptical(50, 80),
          ),
          border: Border.all(
            color: borderColor,
            width: 5,
          ),
        ),
      );
}
