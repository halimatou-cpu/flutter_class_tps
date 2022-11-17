import 'package:al_2/ui/exercices/second_square.dart';
import 'package:flutter/material.dart';

class Two extends StatefulWidget {
  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  Color _color = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SecondSquare(
          color: _color,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _onTap,
          child: const Icon(Icons.edit)),
    );
  }

  _onTap() {
    setState(() {
      _color = Colors.greenAccent;
    });
  }
}
