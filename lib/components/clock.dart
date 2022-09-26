// ignore_for_file: library_private_types_in_public_api
import 'dart:math';

import 'package:analog_clock/screens/homescreen/homecontroller.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../constants.dart';
import '../../size_config.dart';
import '../../painter/clock_painter.dart';

class Clock extends StatelessWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (_) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                color: Get.theme.colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64,
                  )
                ]),
            child: Transform.rotate(
              angle: -pi / 2,
              child: CustomPaint(
                painter: ClockPainter(
                    context: context, dateTime: homeController.dateTime),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
