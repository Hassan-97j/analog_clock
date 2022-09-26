import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  DateTime dateTime = DateTime.now();
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  void onInit() {
    ////////////////////
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeOfDay.minute != TimeOfDay.now().minute) {
        timeOfDay = TimeOfDay.now();
        update();
      }
    });
    ///////////////////
    Timer.periodic(const Duration(seconds: 1), (timer) {
      dateTime = DateTime.now();
      update();
    });
    //////////////
    super.onInit();
  }
}
