import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double selectedTime = 1500;
  bool timerPlay = false;

  int round = 0;
  int goal = 0;
  String currentState = "FOCUS";

  void start() {
    timerPlay = true;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentDuration == 0) {
        handleNextRound();
      } else {
        currentDuration--;
        notifyListeners();
      }
    });
  }

  void pause() {
    timer.cancel();
    timerPlay = false;
    notifyListeners();
  }

  void reset() {
    timer.cancel();
    currentState = "FOCUS";
    currentDuration = selectedTime = 1500;
    round = goal = 0;
    timerPlay = false;
    notifyListeners();
  }

  handleNextRound() {
    if (currentState == "FOCUS" && round != 3) {
      currentState = "BREAK";
      currentDuration = 300;
      selectedTime = 300;
      round++;
      goal++;
    } else if (currentState == "BREAK") {
      currentState = "FOCUS";
      currentDuration = 1500;
      selectedTime = 1500;
    } else if (currentState == "FOCUS" && round == 3) {
      currentState = "LONGBREAK";
      currentDuration = 1500;
      selectedTime == 1500;
      round++;
      goal++;
    } else if (currentState == "LONGBREAK") {
      currentState = "FOCUS";
      currentDuration = 1500;
      selectedTime = 1500;
      round = 0;
    }
    notifyListeners();
  }

  void selectTime(double seconds) {
    selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners();
  }
}
