import 'package:flutter/material.dart';
import 'package:insta_all_ui/Screens/account.dart';
import 'package:insta_all_ui/Screens/home.dart';
import 'package:insta_all_ui/Screens/reels.dart';
import 'package:insta_all_ui/Screens/search.dart';
import 'package:insta_all_ui/Screens/shop.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectindex = 0;

  void _bottomNavigationbar(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  // for differnt pages navigation
  final List<Widget> _children = [
    Userhome(),
    Usersearch(),
    Userreels(),
    Usershop(),
    Useraccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectindex,
          onTap: _bottomNavigationbar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.ondemand_video), label: "reels"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
          ],
        ));
  }
}
