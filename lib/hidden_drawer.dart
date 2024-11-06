import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:the3d_objects/homepage.dart';
import 'package:the3d_objects/settings.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = const TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 18);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Homepage',
               baseStyle: myTextStyle,
               selectedStyle: myTextStyle,
                colorLineSelected: Colors.deepPurple),
          const Homepage()),

          ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Settings',
               baseStyle: myTextStyle,
                selectedStyle: myTextStyle,
                colorLineSelected: Colors.deepPurple
                ),
                
          const SettingsScreen())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 40,
        backgroundColorMenu: Colors.deepPurple.shade200);

  }
}
