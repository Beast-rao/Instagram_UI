import 'package:flutter/material.dart';
import 'package:insta_all_ui/Insidedata/post.dart';

class page3 extends StatelessWidget {
  const page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Post(
      comments: "3952",
      discription: "Amazing Gao vlog",
      likes: "1.2M",
      share: "1.9k",
      username: "apnagaohayai",
      user: Container(
        color: Colors.purpleAccent,
      ),
    );
  }
}
