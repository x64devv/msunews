import 'package:flutter/material.dart';
import 'package:jin_jin/screens/dashboard/activities/editor.dart';
import 'package:jin_jin/screens/dashboard/activities/feed.dart';
import 'package:jin_jin/screens/profile/profile.dart';
import 'package:jin_jin/ui/utilities/theme_data.dart';

import '../../ui/constants/size_config.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;
  final screens = [
  NewsFeed(),
  const Editor(),
  Profile(),
];
  @override
  Widget build(BuildContext context) {
    double? defaultSize = SizeConfig.defaultSize!;
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: textColor,
        unselectedItemColor: textColor.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.feed_outlined),
              label: "Feed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_comment_outlined),
              label: "Editor"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"
          )
        ],
      ),
    );
  }
}
