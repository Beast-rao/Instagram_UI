import 'package:flutter/material.dart';
import 'package:insta_all_ui/Insidedata/post.dart';

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Post(
      comments: "565",
      discription: "IMPORTANT announce by PK",
      likes: "8.3B",
      share: "5644",
      username: "govetofpk",
      user: Container(
        color: Colors.pinkAccent,
      ),
    );
  }
}
