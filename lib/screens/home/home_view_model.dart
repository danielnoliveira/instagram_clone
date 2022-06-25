import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

abstract class HomeViewModel extends State<Home> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }
}
