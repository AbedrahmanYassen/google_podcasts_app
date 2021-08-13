import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_podcasts_app/constants/colors.dart';
import 'package:google_podcasts_app/providers/body_manager.dart';
import 'package:google_podcasts_app/widgets/bottom_app_bar_icon.dart';
import 'package:google_podcasts_app/widgets/new_podcasts_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  //TODO : to change to a widget
  Widget _getFixedPartOfTheBottomAppBar(BuildContext context) {
    BodyManager bodyManager = Provider.of(
      context,
    );
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.09,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomAppBarIcon(
              icon: Icons.home,
              title: 'Home',
              screen: bodyManager.homeScreen,
              changeScreen: () {
                bodyManager.changeCurrentScreen(Screen.HOME);
              },
            ),
            BottomAppBarIcon(
              icon: Icons.search,
              title: 'Explore',
              screen: bodyManager.exploreScreen,
              changeScreen: () {
                bodyManager.changeCurrentScreen(Screen.EXPLORE);
              },
            ),
            BottomAppBarIcon(
              icon: Icons.playlist_add_rounded,
              title: 'Activity',
              changeScreen: () {
                bodyManager.changeCurrentScreen(Screen.ACTIVITY);
              },
              screen: bodyManager.activityScreen,
            ),
          ],
        ),
      ),
    );
  }

//TODO : to change to a widget
  Widget _getExpandablePartPfTheBottomAppBar() {
    return Padding(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    BodyManager manager = Provider.of(context, listen: false);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _getExpandablePartPfTheBottomAppBar(),
            Divider(),
            _getFixedPartOfTheBottomAppBar(
              context,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Consumer<BodyManager>(
          builder: (context, manager, child) {
            return manager.getCurrentScreen(manager.currentScreen);
          },
        ),
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
