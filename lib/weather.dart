import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/addi_info.dart';
import 'package:weather_app/weather_forecasr.dart';

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
          title: Text('Weather App',style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.refresh)),
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
                  Container(
                  width: double.infinity,
                  
                  child: 
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                   
                    child:
                     BackdropFilter( 
                      filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                      
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        
                        child:
                         Column(
                          children:
                           [
                            Text('305°F',
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
              SizedBox(height: 15,),
         
                  Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Weather Forecast',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
                    ),
                    ),   
                  SizedBox(height: 6,),
                 
                SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                   child: Row(
                      children: [
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        Forecast(),
                        
                      ],
                    ),
                 ),
                 SizedBox(height: 15,),

                  Align(
                  alignment: Alignment.centerLeft,
                    child: Text('Additional Information',
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold),),
                  ),   
                  SizedBox(height: 6,),

                  Row(
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