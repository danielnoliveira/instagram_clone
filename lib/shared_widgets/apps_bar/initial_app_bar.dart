import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/svg.dart';

class InitialAppBar extends StatelessWidget with PreferredSizeWidget {
  const InitialAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/svgs/ig_logo.svg'),
            Row(
              children: [
                GestureDetector(
                    onTap: () {
                      print('A daoisndoias');
                    },
                    child: SvgPicture.asset(
                      'assets/svgs/add.svg',
                      width: 6.4.w,
                      height: 6.4.w,
                    )),
                SizedBox(
                  width: 5.3.w,
                ),
                GestureDetector(
                    onTap: () {
                      print('B daoisndoias');
                    },
                    child: SvgPicture.asset(
                      'assets/svgs/heart.svg',
                      width: 6.4.w,
                      height: 6.4.w,
                    )),
                SizedBox(
                  width: 5.3.w,
                ),
                GestureDetector(
                    onTap: () {
                      print('C daoisndoias');
                    },
                    child: SvgPicture.asset(
                      'assets/svgs/messenger.svg',
                      width: 6.4.w,
                      height: 6.4.w,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(36);
}
