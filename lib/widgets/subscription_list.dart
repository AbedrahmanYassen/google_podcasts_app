import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SubscriptionsList extends StatelessWidget {
  const SubscriptionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 5, left: 5),
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}
