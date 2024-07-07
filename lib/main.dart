import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_app/mainscreen.dart';

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
        home:const WeatherScreen() ,
        theme: ThemeData(
          colorScheme: const ColorScheme.dark()
        ),
      ),
      designSize: const Size(360, 640),
    );
  }
}