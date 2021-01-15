import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/insta_body.dart';

class InstaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8faf8),
        centerTitle: true,
        elevation: 1.0,
        leading: Icon(Icons.camera_alt),
        title: Container(
          height: 40,
          child: Image.asset('assets/images/insta_logo.png'),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.send),
          )
        ],
      ),
      body: InstaBody(),

      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        width: double.infinity,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.home), onPressed: (){}),
              IconButton(icon: Icon(Icons.search), onPressed: (){}),
              IconButton(icon: Icon(Icons.add_box), onPressed: (){}),
              IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
              IconButton(icon: Icon(Icons.account_box), onPressed: (){}),
            ],
          ),
        ),
      ),

    );
  }
}
