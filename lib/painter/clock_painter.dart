import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;
  Size? size;
  Canvas? canvas;
  Offset? center;
  Paint? paintObject;

  ClockPainter({
    required this.context,
    required this.dateTime,
    this.canvas,
    this.center,
    this.paintObject,
    this.size,
  });

  @override
  void paint(Canvas canvas, Size size) {
    init(canvas, size);
    drawMinuteLine();
    drawHourLine();
    drawSecondLine();
    drawCenterCircle();
    drawDashes();
  }

//initialize painter
  void init(Canvas canvas, Size size) {
    this.canvas = canvas;
    this.size = size;
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    center = Offset(
      centerX,
      centerY,
    );

    paintObject = Paint();
  }

  void drawMinuteLine() {
    //minute offset calculations
    double centerX = size!.width / 2;
    double centerY = size!.height / 2;
    center = Offset(
      centerX,
      centerY,
    );
    double minuteX =
        centerX + size!.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minuteY =
        centerY + size!.width * 0.35 * sin((dateTime.minute * 6) * pi / 180);
    //Minute Line painter
    canvas!.drawLine(
      center!,
      Offset(minuteX, minuteY),
      paintObject!
        ..color = Get.theme.colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 6,
    );
  }

  void drawHourLine() {
    // hour offset calculations
    double centerX = size!.width / 2;
    double centerY = size!.height / 2;
    center = Offset(
      centerX,
      centerY,
    );
    double hourX = centerX +
        size!.width *
            0.3 *
            cos((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size!.width *
            0.3 *
            sin((dateTime.hour * 30 + dateTime.minute * 0.5) * pi / 180);

    //Hour Line painter
    canvas!.drawLine(
      center!,
      Offset(hourX, hourY),
      paintObject!
        ..color = Get.theme.colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 10,
    );
  }

  void drawSecondLine() {
    // second offset calculations
    double centerX = size!.width / 2;
    double centerY = size!.height / 2;
    center = Offset(
      centerX,
      centerY,
    );
    double secondX =
        centerX + size!.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerY + size!.width * 0.4 * sin((dateTime.second * 6) * pi / 180);

    //second Line painter
    canvas!.drawLine(
      center!,
      Offset(secondX, secondY),
      paintObject!
        ..color = Get.theme.colorScheme.secondary
        ..style = PaintingStyle.stroke
        ..strokeWidth = 3,
    );
  }

  void drawCenterCircle() {
    // off set calculations
    double centerX = size!.width / 2;
    double centerY = size!.height / 2;
    center = Offset(
      centerX,
      centerY,
    );
//draw circles
    canvas!.drawCircle(
      center!,
      24,
      paintObject!..color = Get.theme.colorScheme.primary,
    );
    canvas!.drawCircle(
      center!,
      23,
      paintObject!..color = Get.theme.colorScheme.background,
    );
    canvas!.drawCircle(
      center!,
      10,
      paintObject!..color = Get.theme.colorScheme.primary,
    );
  }

  void drawDashes() {
    //calculations for dashes position
    double centerX = size!.width / 2;
    double centerY = size!.height / 2;
    center = Offset(centerX, centerY);
    var radius = min(centerX, centerY);
    var outerCircleRadius = radius;
    var innerCircleRadius = radius - 14;

    for (double i = 0; i < 360; i += 30) {
      var x1 = centerX + outerCircleRadius * cos(i * pi / 180);
      var y1 = centerX + outerCircleRadius * sin(i * pi / 180);

      var x2 = centerX + innerCircleRadius * cos(i * pi / 180);
      var y2 = centerX + innerCircleRadius * sin(i * pi / 180);
      //draw dashes
      canvas!.drawLine(
        Offset(x1, y1),
        Offset(x2, y2),
        paintObject!
          ..color = Get.theme.colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 4,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
