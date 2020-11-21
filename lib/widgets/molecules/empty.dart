import 'package:automic_design/util/colors.dart';
import 'package:flutter/material.dart';
import '../atoms/h3.dart';

class AppEmptyState extends StatelessWidget {
  final text;

  AppEmptyState({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => new Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150.0,
            height: 150.0,
            child: new Icon(
              Icons.sentiment_very_dissatisfied,
              size: 100.0,
              color: kTextColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: new AppH3Text(
              text: text,
              align: TextAlign.center,
            ),
          ),
        ],
      ));
}
