import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/screens/home/home_view_model.dart';
import 'package:instagram_clone/shared_widgets/apps_bar/initial_app_bar.dart';
import 'package:instagram_clone/shared_widgets/bottom_bar/bottom_bar.dart';
import 'package:sizer/sizer.dart';

class HomeView extends HomeViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: InitialAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        width: 100.w,
        height: 100.h,
      ),
      bottomNavigationBar: const InstagramBottomNavigationBar(),
    );
  }
}
