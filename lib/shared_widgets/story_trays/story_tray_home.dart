import 'package:flutter/material.dart';
import 'package:instagram_clone/mocks/story_tray_home_list.dart';
import 'package:sizer/sizer.dart';

class StoryTrayHome extends StatelessWidget {
  const StoryTrayHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10).copyWith(top: 15),
      width: 100.w,
      constraints: BoxConstraints(
        minHeight: 0,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: story_tray_home_list
              .map((e) => UserStoryTrayItem(
                  userImage: e.userImage, userName: e.userName))
              .toList(),
        ),
      ),
    );
  }
}

class UserStoryTrayItem extends StatelessWidget {
  final String userImage, userName;
  const UserStoryTrayItem({
    Key? key,
    required this.userImage,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          UserGradientStoryTray(
            userStoryImage: UserImageStoryTray(userImage: userImage),
          ),
          SizedBox(
            width: 18.w,
            child: Align(
              alignment: Alignment.center,
              child: Text(userName,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: 'SF_UI_Display',
                    fontWeight: FontWeight.w600,
                    fontSize: 11.5,
                    height: 22 / 11.5,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class UserGradientStoryTray extends StatelessWidget {
  final Widget userStoryImage;
  const UserGradientStoryTray({
    Key? key,
    required this.userStoryImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.w,
      height: 18.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(222, 0, 70, 1),
            Color.fromRGBO(247, 163, 75, 1)
          ],
        ),
      ),
      child: Container(
        width: 16.w,
        alignment: Alignment.center,
        height: 16.w,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: userStoryImage,
      ),
    );
  }
}

class UserImageStoryTray extends StatelessWidget {
  final String userImage;
  const UserImageStoryTray({Key? key, required this.userImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14.w,
      height: 14.w,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/$userImage.png'),
        ),
      ),
    );
  }
}
