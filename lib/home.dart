import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_body.dart';


class InstaHome extends StatelessWidget {

  final topBar = AppBar(

    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: Icon(Icons.camera_alt, color: Colors.black,),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: EdgeInsets.only(right: 12),
        child: Icon(Icons.send, color: Colors.black,),
      )
    ],
  );
  InstaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(

        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,

        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home)),
              IconButton(onPressed: null, icon: Icon(Icons.search)),
              IconButton(onPressed: null, icon: Icon(Icons.subscriptions_rounded)),
              IconButton(onPressed: null, icon: Icon(Icons.favorite)),
              IconButton(onPressed: null, icon: Icon(Icons.person)),

            ],
          ),
        ),
      ),
    );
  }
}
