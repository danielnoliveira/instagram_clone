import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/shared_widgets/buttons/instagram_icon_button.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_svg/svg.dart';

class OtherUserProfileAppBar extends StatelessWidget with PreferredSizeWidget {
  const OtherUserProfileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InstagramIconButton(iconSvg: 'dropdown'),
            Spacer(),
            Text(
              'username',
              style: TextStyle(
                fontFamily: 'SF_UI_Display',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                height: 26 / 22,
                color: Colors.black,
              ),
            ),
            Spacer(),
            Row(
              children: [
                InstagramIconButton(iconSvg: 'notifiations'),
                SizedBox(
                  width: 6.9.w,
                ),
                InstagramIconButton(iconSvg: 'more'),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(52);
}
