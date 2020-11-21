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
            // padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 70.0),
            width: 150.0,
            height: 150.0,
            child: new Icon(
              Icons.sentiment_very_dissatisfied,
              size: 100.0,
              color: textColor,
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

class BuildListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(_buildList(50)),
    );
  }

  List _buildList(int count) {
    List<Widget> listItems = List();

    for (int i = 0; i < count; i++) {
      listItems.add(new Padding(
          padding: new EdgeInsets.all(20.0),
          child: new Text('Item ${i.toString()}',
              style: new TextStyle(fontSize: 25.0))));
    }

    return listItems;
  }
}
