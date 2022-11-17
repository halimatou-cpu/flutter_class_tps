import 'package:al_2/ui/exercices/clickable_square.dart';
import 'package:al_2/ui/exercices/second_square.dart';
import 'package:flutter/material.dart';

class Three extends StatefulWidget {
  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  Color _backgroundColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ClickableSquare(
          onTap: _onTap,
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _backgroundColor = Colors.greenAccent;
    });
  }
}
