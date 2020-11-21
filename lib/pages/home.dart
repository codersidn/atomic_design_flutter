import 'package:automic_design/widgets/atoms/list.dart';
import 'package:flutter/material.dart';
import '../widgets/organisms/header.dart';
import '../widgets/molecules/empty.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          AppHeader(
            title: 'Atomic Design',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              ListItemWidget.buildList(50),
            ),
          ),
          // SliverToBoxAdapter(
          //   child: Container(
          //     height: MediaQuery.of(context).size.height,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //     ),
          //     child: Column(
          //       children: <Widget>[
          //         AppEmptyState(
          //           text: 'Hello',
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
