
import 'package:flutter/material.dart';
import 'package:things_to_do/utils/colors.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "THINGS",
          style: Theme.of(context).textTheme.headline2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("TOD", style: Theme.of(context).textTheme.headline1),
            Stack(
              children: [
                Icon(
                  Icons.check_circle_sharp,
                  size: width * 0.1,
                  color: purple1,
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      border: Border.all(
                          color: purple1, width: width * 0.005),
                      color: Colors.white,
                    ),
                    height: width * 0.05,
                    width: width * 0.05,
                    child: Icon(
                      Icons.check,
                      size: width * 0.04,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
