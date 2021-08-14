import 'package:flutter/material.dart';

class NewPodcastCard extends StatelessWidget {
  const NewPodcastCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CardHeader(),
          SizedBox(
            height: 15,
          ),
          const NewPodcastCardBody(),
          SizedBox(
            height: 15,
          ),
          const ButtonsParts()
        ],
      ),
    );
  }
}

class CardHeader extends StatelessWidget {
  const CardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/my_picture.jpg',
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'The name of the channel ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'The time published ',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ],
    );
  }
}

class NewPodcastCardBody extends StatelessWidget {
  const NewPodcastCardBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('podcast title '),
        Text(
          'podcast description ',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

class ButtonsParts extends StatelessWidget {
  const ButtonsParts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.slow_motion_video),
              SizedBox(
                width: 5,
              ),
              Text(
                'the time ',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.playlist_add_rounded,
            color: Colors.blueAccent,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_circle_down,
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
