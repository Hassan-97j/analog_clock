import 'package:analog_clock/themes/colors/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  ///////////////////////
  //////////////////////
  /////////////////////
  ///light theme data
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: LightColors.scaffoldBackGroundColor,
    //////////
    ///color scheme
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: LightColors.primaryColor,
      onPrimary: LightColors.onPrimaryColor,
      secondary: LightColors.secondaryColors,
      onSecondary: LightColors.onSecondaryColor,
      error: LightColors.errorColor,
      onError: LightColors.onErrorColor,
      background: LightColors.backGroundColor,
      onBackground: LightColors.onBackGroundColor,
      surface: LightColors.surfaceColor,
      onSurface: LightColors.onSurfaceColor,
    ),
    primaryColorLight: LightColors.primaryColor,
    primaryColorDark: LightColors.secondaryColors,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //////////////
    //appbar theme
    appBarTheme: AppBarTheme(
      color: LightColors.scaffoldBackGroundColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: LightColors.secondaryColors,
      ),
      titleTextStyle: GoogleFonts.varelaRound(
        color: LightColors.secondaryColors,
        fontSize: 18,
      ),
    ),
    /////////////////////
    //text theme
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    //////////////////
  );
  ///////////////////////
  //////////////////////
  //////////////////////
}
