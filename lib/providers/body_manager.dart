import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_podcasts_app/screens/home_screen.dart';

class BodyManager extends ChangeNotifier {
  Color homeIconColor = Colors.blue;
  Color exploreIconColor = Colors.black;
  Color activityIconColor = Colors.black;
  Widget getCurrentScreen(Screens screens) {
    switch (screens) {
      case Screens.HOME:
        return BodyCustomScrollView();
      case Screens.EXPLORE:
        return Scaffold(
          body: Container(),
        );
      case Screens.ACTIVITY:
        return Scaffold(
          body: Container(),
        );
      default:
        return Scaffold(
          body: Container(),
        );
    }
  }
}

enum Screens { HOME, EXPLORE, ACTIVITY }
