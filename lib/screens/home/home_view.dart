import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/screens/home/home_view_model.dart';
import 'package:instagram_clone/shared_widgets/apps_bar/initial_app_bar.dart';
import 'package:instagram_clone/shared_widgets/apps_bar/my_user_profile_app_bar.dart';
import 'package:instagram_clone/shared_widgets/apps_bar/other_user_profile_app_bar.dart';
import 'package:instagram_clone/shared_widgets/bottom_bar/bottom_bar.dart';
import 'package:instagram_clone/shared_widgets/buttons/instagram_button.dart';
import 'package:instagram_clone/shared_widgets/story_trays/story_tray_home.dart';
import 'package:instagram_clone/shared_widgets/story_trays/story_tray_user_profile.dart';
import 'package:instagram_clone/shared_widgets/tabs/full_options_tabs.dart';
import 'package:instagram_clone/shared_widgets/tabs/posts_and_mentions_tabs.dart';
import 'package:instagram_clone/shared_widgets/user_data_display/user_data.dart';
import 'package:sizer/sizer.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: OtherUserProfileAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        width: 100.w,
        height: 100.h,
        child: Column(
          children: [
            UserData(),
          ],
        ),
      ),
      bottomNavigationBar: const InstagramBottomNavigationBar(),
    );
  }
}
