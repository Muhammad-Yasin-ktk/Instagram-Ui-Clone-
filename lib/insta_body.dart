import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/insta_list.dart';
class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}
