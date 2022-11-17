import 'package:flutter/material.dart';

class ClickableSquare extends StatelessWidget {
  //final Color? color;
  final VoidCallback onTap;

  const ClickableSquare({
    Key? key,
    //this.color = Colors.pinkAccent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
     child: Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    );
  }
}
