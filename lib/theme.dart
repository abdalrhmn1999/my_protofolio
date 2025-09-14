import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
        fontFamily: 'poppins',
        useMaterial3: true,
        primaryColor: const Color(0xFFC10055),
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: const Color(0xff191919),
        cardColor: const Color(0xff232323),
        iconTheme: IconThemeData(color: AppColors.titleDarkColor),
        appBarTheme: AppBarTheme(
            color: const Color(0xff191919),
            titleTextStyle: TextStyle(color: AppColors.titleDarkColor , fontFamily: 'poppins')),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          bodyMedium: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          headlineLarge: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          headlineMedium: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          headlineSmall: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          titleLarge: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          titleMedium: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          titleSmall: TextStyle(
            color: AppColors.bodyDarkColor,
          ),
          bodySmall: TextStyle(
            color: AppColors.bodyDarkColor,
          ),
          labelLarge: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          labelMedium: TextStyle(
            color: AppColors.titleDarkColor,
          ),
          labelSmall: TextStyle(
            color: AppColors.bodyDarkColor,
          ),
        ),
      );
}

class AppColors {
  static Color get titleDarkColor => const Color(0xffCCCCCC);

  static Color get bodyDarkColor => const Color(0xffEBEBEB);

  static LinearGradient get duoGradient => const LinearGradient(
        colors: [
          Color(0xff13B0F5),
          Color(0xffE70FAA),
        ],
      );
}
