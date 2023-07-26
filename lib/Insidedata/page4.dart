import 'package:flutter/material.dart';
import 'package:insta_all_ui/Insidedata/post.dart';
class page4 extends StatelessWidget {

  const page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Post(
      comments: "23k",
      discription: "Pakistan is gulf country",
      likes: "100.2B",
      share: "345k",
      username: "imrankahn",
      user: Container(
        color: Colors.yellow,
      ),
    );
  }
}
