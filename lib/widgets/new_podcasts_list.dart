import 'package:flutter/material.dart';
import 'package:google_podcasts_app/widgets/new_podcast_card.dart';
import 'package:google_podcasts_app/widgets/subscription_list.dart';

class NewPodcastsList extends StatelessWidget {
  const NewPodcastsList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index == 0) {
            return Column(
              children: [SubscriptionsList(), Divider()],
            );
          }
          return Column(
            children: [NewPodcastCard(), Divider()],
          );
        },
        childCount: 50,
      ),
    );
  }
}
