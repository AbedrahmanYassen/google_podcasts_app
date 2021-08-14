import 'package:flutter/material.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/explore_screen_sliver_list.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/google_sliver_app_bar_with_tabs.dart';

class ExploreScreedBody extends StatefulWidget {
  const ExploreScreedBody({Key? key}) : super(key: key);

  @override
  _ExploreScreedBodyState createState() => _ExploreScreedBodyState();
}

class _ExploreScreedBodyState extends State<ExploreScreedBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        GoogleHeaderSliverAppBarWithTabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Text(
                'hello world',
                style: TextStyle(color: Colors.black),
              ),
              icon: Icon(Icons.zoom_out_sharp),
            ),
            Tab(
              child: Text(
                'hello world',
                style: TextStyle(color: Colors.black),
              ),
              icon: Icon(Icons.zoom_out_sharp),
            ),
            Tab(
              child: Text(
                'hello world',
                style: TextStyle(color: Colors.black),
              ),
              icon: Icon(
                Icons.zoom_out_sharp,
              ),
            )
          ],
        ),
        ExploreScreenSliverList()
      ],
    );
  }
}
