import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Stories'),
                Row(
                  children: [Icon(Icons.play_arrow), Text('Watch All')],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (ctx, index) => Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                'https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg'))),
                  ),
                  index==0?Positioned(
                    bottom: 10,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10,
                      child: Icon(Icons.add,color: Colors.white,size: 20,),
                    ),
                  ):Container()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
