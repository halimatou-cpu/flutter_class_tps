import 'package:flutter/material.dart';

class SecondSquare extends StatelessWidget {
  final Color? color;

  const SecondSquare({
    Key? key,
    this.color = Colors.green
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
