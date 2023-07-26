import 'package:flutter/material.dart';

import '../Insidedata/page1.dart';
import '../Insidedata/page2.dart';
import '../Insidedata/page3.dart';
import '../Insidedata/page4.dart';
class Userreels extends StatelessWidget {
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: [
        page1(),
        page2(),
        page3(),
        page4(),
      ],
    );
  }
}
