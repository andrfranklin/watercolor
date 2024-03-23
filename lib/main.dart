import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watercolor/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WaterColor',
      home: MyHomePage(),
    );
  }
}
