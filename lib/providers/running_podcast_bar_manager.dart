import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class RunningPodcastBarManager with ChangeNotifier {
  late Offset currentTouch; //fill on start panning
  late Offset previousTouch; //fill on each update panning
  void onPaneStar(DragStartDetails dragStartDetails) {
    currentTouch = dragStartDetails.localPosition;
    previousTouch = Offset.zero;
  }

  void onPaneUpdate(DragUpdateDetails dragUpdateDetails) {
    previousTouch = currentTouch;
    currentTouch = dragUpdateDetails.localPosition;
    if (currentTouch.dy < previousTouch.dy) {
      extendExtendablePartOfBottomAppBar();
    }
  }

  void onPaneEnd() {}
  void extendExtendablePartOfBottomAppBar() {}
}
