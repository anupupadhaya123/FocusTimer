import 'package:flutter/material.dart';
import 'package:promodoro/services/timer_service.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  const TimeController({Key? key}) : super(key: key);

  @override
  State<TimeController> createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration:
          const BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      child: Center(
        child: IconButton(
          icon: provider.timerPlay
              ? const Icon(Icons.pause)
              : const Icon(Icons.play_arrow_sharp),
          color: Colors.white,
          iconSize: 55,
          onPressed: () {
            provider.timerPlay
                ? Provider.of<TimerService>(context, listen: false).pause()
                : Provider.of<TimerService>(context, listen: false).start();
          },
        ),
      ),
    );
  }
}
