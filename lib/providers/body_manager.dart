import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_podcasts_app/screens/home_screen.dart';

class BodyManager extends ChangeNotifier {
  Screen homeScreen = Screen.HOME;
  Screen exploreScreen = Screen.EXPLORE;
  Screen activityScreen = Screen.ACTIVITY;
  late Screen currentScreen = Screen.HOME;
  Widget getCurrentScreen(Screen screens) {
    switch (screens) {
      case Screen.HOME:
        return BodyCustomScrollView();
      case Screen.EXPLORE:
        return Scaffold(
          body: Container(),
        );
      case Screen.ACTIVITY:
        return Scaffold(
          body: Container(),
        );
      default:
        return Scaffold(
          body: Container(),
        );
    }
    notifyListeners();
  }

  void changeCurrentScreen(Screen nextScreen) {
    currentScreen = nextScreen;
    notifyListeners();
  }

  bool determineIfItsTheCurrentScreen(Screen screen) {
    return currentScreen == screen;
  }
}

enum Screen {
  HOME,
  EXPLORE,
  ACTIVITY,
}
