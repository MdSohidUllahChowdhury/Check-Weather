// ignore_for_file: prefer_const_constructors, dead_code
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/weather.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
     builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,  
        home:WeatherScreen() ,
      ),
      designSize: Size(360, 640),
    );
  }
}