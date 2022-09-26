// ignore_for_file: library_private_types_in_public_api

import 'package:analog_clock/screens/homescreen/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../size_config.dart';

class TimeInHourAndMinute extends StatelessWidget {
  const TimeInHourAndMinute({Key? key}) : super(key: key);

//   @override
//   _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
// }

// class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
//   TimeOfDay _timeOfDay = TimeOfDay.now();
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_timeOfDay.minute != TimeOfDay.now().minute) {
//         setState(() {
//           _timeOfDay = TimeOfDay.now();
//         });
//       }
//     });
//   }

  @override
  Widget build(BuildContext context) {
    String period = Get.find<HomeController>().timeOfDay.period == DayPeriod.am
        ? "AM"
        : "PM";
    var homeController = Get.find<HomeController>();
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${homeController.timeOfDay.hourOfPeriod}:${homeController.timeOfDay.minute}",
            style: TextStyle(
              color: Get.theme.colorScheme.secondary,
              fontSize: getProportionateScreenHeight(24),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          RotatedBox(
            quarterTurns: 3,
            child: Text(
              period,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                color: Get.theme.colorScheme.secondary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
