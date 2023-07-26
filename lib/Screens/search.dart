import 'package:flutter/material.dart';

import '../Insidedata/searchgrids.dart';
class Usersearch extends StatelessWidget {
  const Usersearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          color: Colors.grey[300],
          child: TextFormField(

            decoration: InputDecoration(

              prefixIcon: Icon(Icons.search, color: Colors.grey[500],),
                  hintText:"Search" ,
              // fillColor: Colors.grey[300],
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))

            ),
          ),
        ),
        // title: ClipRRect(
        //   borderRadius: BorderRadius.circular(10),
        //   child: Container(
        //     padding: EdgeInsets.all(8),
        //     color: Colors.grey[300],
        //     child: Row(
        //       children: [
        //         Icon(Icons.search, color: Colors.grey[500],),
        //         Container(
        //           child: Text("Search ", style: TextStyle(color: Colors.grey[500]),),
        //         ),
        //
        //       ],
        //     ),
        //   ),
        // ),
      ),
      body: SearchGrid(),
    );
  }
}
