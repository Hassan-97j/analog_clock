import 'package:analog_clock/routes/apppages.dart';
import 'package:analog_clock/routes/approutes.dart';
import 'package:analog_clock/screens/homescreen/homebinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clock',
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: PagesNames.homeScreen,
      initialBinding: HomeBinding(),
      getPages: appRoutes(),
    );
  }
}
