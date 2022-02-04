import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButtoms extends StatelessWidget {
  const SocialButtoms({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: width * 0.15,
          width: width * 0.15,
          decoration: BoxDecoration(
              color: Colors.blue.shade900,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.facebookF)),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon:  ,
        // ),

        Container(
          height: width * 0.15,
          width: width * 0.15,
          decoration: BoxDecoration(
              color: Colors.blue.shade400,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.twitter)),
        ),
        Container(
          height: width * 0.15,
          width: width * 0.15,
          decoration: BoxDecoration(
              color: Colors.red.shade400,
              borderRadius: BorderRadius.circular(30)),
          child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.google)),
        ),
      ],
    );
  }
}
