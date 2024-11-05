import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/open_screen.dart';

void main() {
  runApp((ScreenUtilInit(
    designSize: const Size(375, 725),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
      theme:ThemeData(
        colorScheme: const ColorScheme.dark(), 
        useMaterial3: true),
    ),
  )));}
