import 'package:flutter/material.dart';
import 'package:google_podcasts_app/constants/colors.dart';

class GoogleHeaderSliverAppBarWithTabBar extends StatelessWidget {
  final TabController controller;
  final List<Tab> tabs;
  const GoogleHeaderSliverAppBarWithTabBar(
      {required this.controller, required this.tabs, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      flexibleSpace: TabBar(
        onTap: (int index) {
          print('$index');
        },
        controller: controller,
        tabs: tabs,
      ),
      title: FlexibleSpaceBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Explore',
              style: TextStyle(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      expandedHeight: 160,
      actions: [
        CircleAvatar(
          child: Placeholder(),
        )
      ],
    );
  }

  TextSpan _makeTextSpanForGoogleWord(
      {required String letter, required Color colorOfTheLetter}) {
    return TextSpan(text: letter, style: TextStyle(color: colorOfTheLetter));
  }
}
