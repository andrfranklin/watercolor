import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const Square({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
    );
  }
}
