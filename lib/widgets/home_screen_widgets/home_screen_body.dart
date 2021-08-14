import 'package:flutter/material.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/google_sliver_app_bar_with_tabs.dart';

import '../header_Google_widget.dart';
import 'new_podcasts_list.dart';

class BodyCustomScrollView extends StatefulWidget {
  const BodyCustomScrollView({Key? key}) : super(key: key);

  @override
  _BodyCustomScrollViewState createState() => _BodyCustomScrollViewState();
}

class _BodyCustomScrollViewState extends State<BodyCustomScrollView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [GoogleHeaderSliverAppBar(), NewPodcastsList()],
    );
  }
}
