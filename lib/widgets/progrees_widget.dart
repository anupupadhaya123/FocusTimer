import 'package:flutter/material.dart';
import 'package:promodoro/utils/utils.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "0/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "0/12",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Round".toUpperCase(),
              style: textStyle(25, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "Goal".toUpperCase(),
              style: textStyle(25, Colors.grey[350], FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
