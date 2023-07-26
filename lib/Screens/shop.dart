import 'package:flutter/material.dart';

import '../Insidedata/shopgrids.dart';
class Usershop extends StatelessWidget {
  const Usershop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Shop" ,style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          SizedBox(width: 10),
          IconButton(icon: Icon(Icons.date_range_outlined), onPressed: (){},),
          SizedBox(width: 10),
          IconButton(icon: Icon(Icons.menu), onPressed: (){},),
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey[500],),
                      Container(
                        child: Text("Search ", style: TextStyle(color: Colors.grey[500]),),
                      ),

                    ],
                  ),
                ),
              ),
          ),
          Expanded(child: ShopGrid()),
        ],
      )
      ,
    );
  }
}
