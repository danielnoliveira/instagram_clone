import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.only(left: 16, right: 16, top: 2, bottom: 2),
      child: Row(
        children: [
          UserGradientStoryTray(
            userStoryImage: UserImageStoryTray(userImage: 'ruffles_story_tray'),
          ),
          Spacer(),
          UserInfoParam(label: 'Posts', value: 98484),
          Spacer(),
          UserInfoParam(label: 'Followers', value: 9537),
          Spacer(),
          UserInfoParam(label: 'Following', value: 2784),
          Spacer(),
        ],
      ),
    );
  }
}

class UserInfoParam extends StatelessWidget {
  const UserInfoParam({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${value ~/ 1000},${(value % 1000).toString().padLeft(3, '0')}',
          style: TextStyle(
            fontFamily: 'SF_UI_Display',
            fontWeight: FontWeight.w700,
            fontSize: 5.w,
            height: 1.2,
            color: Colors.black,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'SF_UI_Display',
            fontWeight: FontWeight.w400,
            fontSize: 4.w,
            height: 1.2,
            color: Colors.black,
          ),
        ),
      ],
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
      width: 19.w,
      height: 19.w,
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
        width: 17.w,
        alignment: Alignment.center,
        height: 17.w,
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
      width: 15.w,
      height: 15.w,
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
