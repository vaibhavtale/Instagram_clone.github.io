import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/stories.dart';

class InstaList extends StatelessWidget {
  const InstaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: deviceSize.height * 0.2,
              child: InstaStory(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 8, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // first row
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/images/virat.jpg"),
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "@Virat_Kohli",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
                // second row
                Flexible(
                  fit: FlexFit.loose,
                  child: Image(
                    image: AssetImage("assets/images/cr7.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),

              //  third row

                Padding(
                    padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(FontAwesomeIcons.heart),

                          SizedBox(width: 10,),

                          Icon(FontAwesomeIcons.comment),

                          SizedBox(width: 10,),

                          Icon(FontAwesomeIcons.paperPlane),
                        ],

                      ),
                      Icon(FontAwesomeIcons.bookmark),
                    ],
                  ),
                ),

              //  4th Row

                Text("This image is Liked by you and 87876 others"),
              SizedBox(height: 20,),
                
              //  5th Rowww

                Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage("assets/images/virat.jpg"),
                              fit: BoxFit.fitWidth,
                            )),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Add a comment",
                        style: TextStyle(
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                
              //  6 th and the last one
                Padding(
                  padding: EdgeInsets.only(left: 16),
                    child: Text("1 day ago", style: TextStyle(color: Colors.grey),))

              ],
            ),
    );
  }
}
