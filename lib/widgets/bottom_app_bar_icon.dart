import 'package:flutter/material.dart';
import 'package:google_podcasts_app/providers/body_manager.dart';
import 'package:provider/provider.dart';

class BottomAppBarIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final Screen screen;
  final Function changeScreen;

  const BottomAppBarIcon(
      {required this.icon,
      required this.title,
      required this.screen,
      required this.changeScreen,
      required,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    BodyManager bodyManager = Provider.of(
      context,
    );
    return TextButton(
      onPressed: () {
        changeScreen();
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 30,
            color: bodyManager.determineIfItsTheCurrentScreen(screen)
                ? Colors.blue
                : Colors.black,
          ),
          Text(
            '$title',
            style: TextStyle(
              color: bodyManager.determineIfItsTheCurrentScreen(screen)
                  ? Colors.blue
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
