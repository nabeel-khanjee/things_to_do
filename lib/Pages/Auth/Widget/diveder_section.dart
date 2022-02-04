
import 'package:flutter/material.dart';

class DividerSections extends StatelessWidget {
  const DividerSections({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.1),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("OR",
                        style: Theme.of(context).textTheme.bodyText1),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              Text(
                "login using social media",
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      ],
    );
  }
}
