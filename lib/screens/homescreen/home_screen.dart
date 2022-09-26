import 'package:analog_clock/components/clock.dart';
import 'package:analog_clock/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';
import 'package:analog_clock/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            TimeInHourAndMinute(),
            Clock(),
          ],
        ),
      ),
    );
  }
}
