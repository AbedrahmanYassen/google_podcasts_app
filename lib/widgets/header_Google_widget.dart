import 'package:flutter/material.dart';
import 'package:google_podcasts_app/constants/colors.dart';

class GoogleHeaderSliverAppBar extends StatelessWidget {
  const GoogleHeaderSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      expandedHeight: 50,
      centerTitle: true,
      actions: [
        CircleAvatar(
          child: Placeholder(),
        )
      ],
      title: RichText(
        text: TextSpan(
          children: <TextSpan>[
            _makeTextSpanForGoogleWord(
                letter: 'G' /*TODO:adding the colors to the constants */,
                colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME),
            _makeTextSpanForGoogleWord(
              letter: 'o' /* TODO:adding the colors to the constants */,
              colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME,
            ),
            _makeTextSpanForGoogleWord(
              letter: 'o' /*TODO:adding the colors to the constants */,
              colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME,
            ),
            _makeTextSpanForGoogleWord(
              letter: 'g' /*TODO:adding the colors to the constants */,
              colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME,
            ),
            _makeTextSpanForGoogleWord(
              letter: 'l' /*TODO:adding the colors to the constants */,
              colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME,
            ),
            _makeTextSpanForGoogleWord(
              letter: 'e' /*TODO:adding the colors to the constants */,
              colorOfTheLetter: MyColors.G_LETTER_COLOR_IN_GOOGLE_NAME,
            ),
          ],
        ),
      ),
    );
  }

  TextSpan _makeTextSpanForGoogleWord(
      {required String letter, required Color colorOfTheLetter}) {
    return TextSpan(text: letter, style: TextStyle(color: colorOfTheLetter));
  }
}
