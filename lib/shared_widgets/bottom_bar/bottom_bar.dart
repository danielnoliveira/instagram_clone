import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class InstagramBottomNavigationBar extends StatefulWidget {
  const InstagramBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<InstagramBottomNavigationBar> createState() =>
      _InstagramBottomNavigationBarState();
}

class _InstagramBottomNavigationBarState
    extends State<InstagramBottomNavigationBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<dynamic> buttons = [
    {
      'svg': 'Home.svg',
    },
    {
      'svg': 'Search.svg',
    },
    {
      'svg': 'Reels.svg',
    },
    {
      'svg': 'Shop.svg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        ...buttons.map((b) => BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svgs/${b['svg']}',
                color: Colors.black),
            label: '',
            backgroundColor: Colors.black)),
        BottomNavigationBarItem(
          icon: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              'assets/images/Ruffles.png',
              width: 5.6.w,
              height: 5.6.w,
              fit: BoxFit.contain,
            ),
          ),
          label: '',
        ),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}
