import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Status",
        style: TextStyle(fontWeight: FontWeight.bold, ),//fontFamily: "Aveny"),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            "Watch More",
            style: TextStyle(
             // fontFamily: "Aveny",
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: EdgeInsets.only(top: 0.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/virat.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.0),
            ),

            index == 0 ? Positioned(
              right: 10.0,
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10.0,
                  child: Icon(Icons.add, color: Colors.white, size: 14.0,),
                )
            ) : Container(),
          ],
        ),
      ),
    ),
  );

  InstaStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          topText,
          stories,
        ],
      ),
    );
  }
}
