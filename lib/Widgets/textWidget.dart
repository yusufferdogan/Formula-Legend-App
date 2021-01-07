import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final List <Color> color;

  TextWidget(this.text, this.fontSize, this.color);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.100001,
      width: size.width * 0.6,
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
          colors: [
            color[0],
            color[1],
            color[2],
            color[3],
            color[4],
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.15, 0.30, 0.45, 0.60, 0.90],
          // tileMode: TileMode.repeated,
        ),
        border: Border.all(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Text(
        ' $text',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}
