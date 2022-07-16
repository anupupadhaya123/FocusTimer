import 'package:flutter/material.dart';
import 'package:promodoro/services/timer_service.dart';
import 'package:promodoro/utils/utils.dart';
import 'package:provider/provider.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.round}/4",
              style: textStyle(30, Colors.grey[350], FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
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
              style: textStyle(25, Colors.white, FontWeight.bold),
            ),
            Text(
              "Goal".toUpperCase(),
              style: textStyle(25, Colors.white, FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
