import 'package:flutter/material.dart';
import 'package:promodoro/services/timer_service.dart';
import 'package:promodoro/utils/utils.dart';
import 'package:promodoro/widgets/progrees_widget.dart';
import 'package:promodoro/widgets/time_controller.dart';
import 'package:promodoro/widgets/time_options.dart';
import 'package:promodoro/widgets/timer_card.dart';
import 'package:provider/provider.dart';

class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "NepPomodoro",
          style: textStyle(20, Colors.white, FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () => provider.reset(),
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            iconSize: 40,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const TimerCard(),
              const SizedBox(
                height: 60,
              ),
              TimeOptions(),
              const SizedBox(
                height: 60,
              ),
              const TimeController(),
              const SizedBox(
                height: 60,
              ),
              const ProgressWidget()
            ],
          ),
        ),
      ),
    );
  }
}
