import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_podcasts_app/constants/colors.dart';
import 'package:google_podcasts_app/widgets/new_podcasts_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  Widget _buildIconButton({required IconData icon, required String title}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 30,
          ),
        ),
        Text(
          '$title',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 5),
              child: GestureDetector(
                child: Container(
                  height: 50,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/my_picture.jpg',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      //TODO : i have to the animation that is here
                      SizedBox(
                        width: 200,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            'here is a moving text will be and  I have to make the animation by me and then take whats on stack overflow ',
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_arrow_outlined,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.09,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconButton(icon: Icons.home, title: 'Home'),
                    _buildIconButton(icon: Icons.search, title: 'Explore'),
                    _buildIconButton(
                        icon: Icons.playlist_add_rounded, title: 'Activity'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: BodyCustomScrollView(),
      ),
    );
  }
}

class BodyCustomScrollView extends StatelessWidget {
  const BodyCustomScrollView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [_buildSliverAppBar(), const NewPodcastsList()],
    );
  }

  Widget _buildSliverAppBar() {
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
