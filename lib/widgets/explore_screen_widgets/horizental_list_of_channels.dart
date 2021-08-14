import 'package:flutter/material.dart';

class HorezantalListOfChannels extends StatelessWidget {
  const HorezantalListOfChannels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('title '),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const ChannelItem();
              }),
        ),
      ],
    );
  }
}

class ChannelItem extends StatelessWidget {
  const ChannelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Image.asset(
              'assets/images/my_picture.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
            Column(
              children: [Text('dark text '), Text('light text ')],
            ),
          ],
        ),
      ),
    );
  }
}
