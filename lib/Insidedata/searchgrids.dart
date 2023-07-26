import 'package:flutter/material.dart';

class SearchGrid extends StatelessWidget {
  const SearchGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 50,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(3.0),
            child: Container(
              color: Colors.blueAccent,
            ),
          );
        });
  }
}
