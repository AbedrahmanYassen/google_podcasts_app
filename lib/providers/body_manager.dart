import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/explore_screen_body.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/google_sliver_app_bar_with_tabs.dart';
import 'package:google_podcasts_app/widgets/header_Google_widget.dart';
import 'package:google_podcasts_app/widgets/home_screen_widgets/home_screen_body.dart';

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
        return ExploreScreedBody();
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
