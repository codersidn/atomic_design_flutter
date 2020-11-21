import 'package:automic_design/widgets/atoms/list.dart';
import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              ListItemWidget.buildList(50),
            ),
          ),
        ],
      ),
    );
  }
}
