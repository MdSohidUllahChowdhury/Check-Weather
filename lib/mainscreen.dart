// ignore_for_file: file_names
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/widget/addi_info.dart';
import 'package:weather_app/widget/weather_forecasr.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: const Text('Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
           
          actions: [
            IconButton(onPressed: (){},
             icon: const Icon(Icons.refresh)),
          ],
        ),

        body: 
        Padding(
          padding: const EdgeInsets.all(10.0),
          
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: 
            [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
                  
                  child: 
                  SizedBox(
                  width: double.infinity,
              
                  child: 
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                   
                  child:
                     BackdropFilter( 
                      filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                      
                  child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        
                  child:
                       Column(
                          children:
                           [
                            Text('286K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold),
                              ),
                            Icon(Icons.cloud,size: 64,),
                            Text('Rain',style: TextStyle(fontSize: 18),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15,),
         
              const Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Weather Forecast',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                    ),
                    ),   
              const SizedBox(height: 6,),
                 
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                   child: Row(
                      children: [
                        
                        Forecast(time: '3:23 AM',icon: (Icons.cloud), farenhite: '289'),
                        Forecast(time: '12:01 PM',icon: (Icons.sunny), farenhite: '302'),
                        Forecast(time: '4:29 PM',icon: (Icons.sunny), farenhite: '299'),
                        Forecast(time: '5:08 PM',icon: (Icons.sunny), farenhite: '303'),
                        Forecast(time: '6:48 PM',icon: (Icons.cloud), farenhite: '295'),
                        Forecast(time: '7:03 PM',icon: (Icons.cloud), farenhite: '288')
                        
                      ],
                    ),
                 ),
                 const SizedBox(height: 15,),

                  const Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Additional Information',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
                  ),   
                  const SizedBox(height: 6,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Additional_Information(
                        icon: (Icons.water_drop), 
                        textInfo: 'Humidity', 
                        number: '89'
                        ),

                        Additional_Information(
                          icon: (Icons.air),
                           textInfo: 'Wind Speed',
                            number: '7.9'
                            ),

                            Additional_Information(
                          icon: (Icons.beach_access),
                           textInfo: 'Pressure',
                            number: '1001'
                          ),
                ],
              )                 
            ],
          ),
       ),  
    );
  }
}