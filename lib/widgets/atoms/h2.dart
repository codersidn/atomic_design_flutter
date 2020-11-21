import 'package:flutter/material.dart';

class AppH2Text extends StatelessWidget {
  final text;
  final align;
  final Color color;

  AppH2Text({Key key, this.align, this.text, this.color, }) : super(key: key);

  @override
  Widget build(BuildContext context) => new Text(this.text,
      style: TextStyle(
        color: color,
        fontSize: 32.0,
        fontWeight: FontWeight.w500,
      ),
      textAlign: this.align);
}
