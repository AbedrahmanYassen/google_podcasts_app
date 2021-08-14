import 'package:flutter/material.dart';
import 'package:google_podcasts_app/widgets/explore_screen_widgets/horizental_list_of_channels.dart';
import 'package:google_podcasts_app/widgets/home_screen_widgets/new_podcast_card.dart';

class ExploreScreenSliverList extends StatelessWidget {
  const ExploreScreenSliverList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      if (index == 0) {
        return SizedBox(height: 200, child: HorezantalListOfChannels());
      } else {
        return NewPodcastCard();
      }
    }));
  }
}
