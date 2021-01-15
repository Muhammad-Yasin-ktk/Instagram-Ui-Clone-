import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/insta_story.dart';

class InstaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: (ctx, index) => index == 0
          ? InstaStory()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Divider(
                  height: 3,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Muhammad Yasin',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Icon(Icons.more_vert),
                    ],
                  ),
                ),
//              Flexible(
//                flex: 4,
//                  fit: FlexFit.loose,
//                  child: Image.network('https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',fit: BoxFit.cover,)
//              , )

                Image(
                  image: NetworkImage(
                    'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg',
                  ),
                  fit: BoxFit.cover,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.add_box),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.favorite),
                        ],
                      ),
                      Icon(Icons.comment),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Liked by pawankumar, pk and 528,331 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                        ),
                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child:
                      Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
    );
  }
}
