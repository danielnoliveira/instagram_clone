import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class PostsAndMentionsTabs extends StatefulWidget {
  final TabController tabController;
  const PostsAndMentionsTabs({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<PostsAndMentionsTabs> createState() => _PostsAndMentionsTabsState();
}

class _PostsAndMentionsTabsState extends State<PostsAndMentionsTabs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.black,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.black.withOpacity(0.5),
      tabs: [
        Tab(
          icon: SvgPicture.asset(
            'assets/svgs/Grid.svg',
            width: 20,
            height: 20,
            color: widget.tabController.index == 0
                ? Colors.black
                : Colors.black.withOpacity(0.5),
          ),
        ),
        Tab(
          icon: SvgPicture.asset(
            'assets/svgs/mentions.svg',
            width: 20,
            height: 20,
            color: widget.tabController.index == 1
                ? Colors.black
                : Colors.black.withOpacity(0.5),
          ),
        ),
      ],
      controller: widget.tabController,
    );
  }
}
