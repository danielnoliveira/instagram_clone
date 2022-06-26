import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/mocks/story_tray_home_list.dart';
import 'package:sizer/sizer.dart';

class StoryTrayUserProfile extends StatelessWidget {
  const StoryTrayUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 8),
          child: Row(
            children: [
              ...story_tray_home_list
                  .asMap()
                  .map((key, value) => MapEntry(
                      key,
                      UserProfileStoryTrayItem(
                        userImage: value.userImage,
                        storyIndex: key,
                      )))
                  .values
                  .toList(),
              NewStoryButton()
            ],
          ),
        ),
      ),
    );
  }
}

class UserProfileStoryTrayItem extends StatelessWidget {
  final int storyIndex;
  final String userImage;
  const UserProfileStoryTrayItem({
    Key? key,
    required this.storyIndex,
    required this.userImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 16.w,
            height: 16.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              width: 14.w,
              height: 14.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/$userImage.png'),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
            child: Text(
              'Story $storyIndex',
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF_UI_Display',
                fontWeight: FontWeight.w600,
                fontSize: 11,
                height: 16 / 11,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewStoryButton extends StatelessWidget {
  const NewStoryButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 16.w,
            height: 16.w,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(220, 220, 220, 1),
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 8.w,
            ),
          ),
          SizedBox(
            width: 15.w,
            child: Text(
              'New',
              softWrap: false,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'SF_UI_Display',
                fontWeight: FontWeight.w600,
                fontSize: 11,
                height: 16 / 11,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
