import 'package:flutter/material.dart';
import '../../util/colors.dart' as appColors;
import '../atoms/input.dart';
import '../atoms/text_h2.dart';

class AppHeader extends StatelessWidget {
  final title;
  final leading;
  AppHeader({Key key, this.title, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      title: new AppH2Text(
        text: this.title,
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          "assets/images/city.jpg",
          fit: BoxFit.cover,
        ),
      ),
      backgroundColor: appColors.kPrimary,
      pinned: true,
      expandedHeight: size.height * 0.18,
      bottom: new PreferredSize(
        preferredSize: new Size.fromHeight(2.0),
        child: AppInput(
          placeholder: 'search tasks',
          icon: new Icon(Icons.search),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: new Icon(Icons.settings),
          color: appColors.kGrey,
          tooltip: 'Add new entry',
          onPressed: () {},
        ),
      ],
    );
  }
}
