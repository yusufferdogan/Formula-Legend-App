import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  final String name;
  final int salary;
  final String imageUrl;

  const Person({Key key, this.name, this.salary, this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      child: Column(
        children: <Widget>[
          Container(
            width: 125,
            child: Image.asset(imageUrl),
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            '\$$salary',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
