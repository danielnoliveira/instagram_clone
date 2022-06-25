import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/shared_widgets/buttons/instagram_icon_button.dart';
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
                InstagramIconButton(iconSvg: 'add'),
                SizedBox(
                  width: 5.3.w,
                ),
                InstagramIconButton(iconSvg: 'heart'),
                SizedBox(
                  width: 5.3.w,
                ),
                InstagramIconButton(iconSvg: 'messenger'),
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
