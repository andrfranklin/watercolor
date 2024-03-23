import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watercolor/components/square.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    List<Row> rows = [];

    const double countSquareColumns = 8;
    const double countSquareRows = 16;

    final double squareWidth =
        MediaQuery.of(context).size.width / countSquareColumns;
    final double squareHeight =
        MediaQuery.of(context).size.height / countSquareRows;

    for (var i = 0; i < countSquareRows; i++) {
      List<Square> squares = [];
      for (var i = 0; i < countSquareColumns; i++) {
        squares.add(Square(
            height: squareHeight,
            width: squareWidth,
            color:
                Colors.primaries[Random().nextInt(Colors.primaries.length)]));
      }
      rows.add(Row(
        children: squares,
      ));
    }

    return Scaffold(
      body: Column(children: rows),
    );
  }
}
