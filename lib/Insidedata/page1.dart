import 'package:flutter/material.dart';
import 'package:insta_all_ui/Insidedata/post.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Post(
      comments: "4583",
      discription: "funny videos about study",
      likes: "1.4B",
      share: "345",
      username: "faheemrao4485",
      user: Container(
        color: Colors.blueGrey,
      ),
    );
  }
}
