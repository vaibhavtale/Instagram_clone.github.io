import 'package:flutter/material.dart';
import 'package:instagram_clone/insta_list.dart';

class InstaBody extends StatelessWidget {
  const InstaBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}
