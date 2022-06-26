import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math';
import 'package:sizer/sizer.dart';

class InstagramButton extends StatelessWidget {
  String buttonName;
  VoidCallback? action;
  Color bgButtonColor = Colors.white;
  Color textButtonColor = Colors.black;
  bool isExpanded = true;
  bool hasDropdownArrow = false;

  InstagramButton(
      {Key? key,
      required this.buttonName,
      this.action,
      this.isExpanded = true,
      this.hasDropdownArrow = false})
      : super(key: key);

  InstagramButton.blueButton(this.buttonName,
      {Key? key,
      VoidCallback? action,
      bool isExpanded = true,
      bool hasDropdownArrow = false})
      : super(key: key) {
    this.hasDropdownArrow = hasDropdownArrow;
    this.isExpanded = isExpanded;
    this.action = action;
    bgButtonColor = Color.fromRGBO(31, 161, 255, 1);
    textButtonColor = Colors.white;
  }

  InstagramButton.greenContent(this.buttonName,
      {Key? key,
      VoidCallback? action,
      bool isExpanded = true,
      bool hasDropdownArrow = false})
      : super(key: key) {
    this.hasDropdownArrow = hasDropdownArrow;
    this.isExpanded = isExpanded;
    this.action = action;
    textButtonColor = Color.fromRGBO(112, 192, 80, 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: isExpanded ? double.maxFinite : double.minPositive,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: bgButtonColor,
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color.fromRGBO(203, 203, 203, 1), width: 1),
            borderRadius: BorderRadius.circular(3),
          ),
          elevation: 0,
        ),
        onPressed: action,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              buttonName,
              style: TextStyle(
                fontFamily: 'SF_UI_Display',
                fontWeight: FontWeight.w700,
                fontSize: 13,
                height: 16 / 13,
                color: textButtonColor,
              ),
            ),
            if (hasDropdownArrow)
              SvgPicture.asset(
                'assets/svgs/dropdown_bottom.svg',
                color: textButtonColor,
              ),
          ],
        ),
      ),
    );
  }
}
