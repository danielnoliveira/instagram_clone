import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class InstagramIconButton extends StatelessWidget {
  final String iconSvg;
  const InstagramIconButton({Key? key, required this.iconSvg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('icon: $iconSvg');
      },
      child: SvgPicture.asset(
        'assets/svgs/$iconSvg.svg',
        width: 6.4.w,
        height: 6.4.w,
      ),
    );
  }
}
