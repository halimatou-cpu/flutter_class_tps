import 'package:flutter/material.dart';

class SquareExercice extends StatefulWidget {
  SquareExercice({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SquareExercice();
}

class _SquareExercice extends State<SquareExercice> {
  //_SquareExercice({Key? key}) : super(key: key);

  Color _currentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeSquareColor();
        //print("coucou");
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            color: _currentColor,
            borderRadius: BorderRadius.circular(20)
          //image: ...
          /*borderRadius: BorderRadius.only(
          topRight: Radius.circular(20)
        ), */
          //shape: BoxShape.circle
        ),
      ),
    );

  }

  void changeSquareColor() {
    setState(() {
      _currentColor = Colors.amber;
    });
  }

}
