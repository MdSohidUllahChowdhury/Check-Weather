import 'package:flutter/material.dart';



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
          title: Text('Weather App'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.refresh)),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 230,
                width: double.infinity,
                
                decoration: BoxDecoration(
                  color: Color.fromARGB(158, 228, 228, 214),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  backgroundBlendMode: BlendMode.hardLight,
                ),
              )

              ,SizedBox(height: 15,),

                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Weather Forecast '),
                    ],
                  ),
                  SizedBox(height: 8,),
                 
                 SingleChildScrollView(scrollDirection: Axis.horizontal,
                   child: Row(
                      children: [
                        Container( //1
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),
                   
                         Container( //2
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),
                   
                         Container( //3
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),

                        Container( //4
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),

                        Container( //5
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),

                        Container( //6
                          height: 95,
                          width: 75,
                          decoration: BoxDecoration(
                    color: Color.fromARGB(158, 228, 228, 214),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    backgroundBlendMode: BlendMode.hardLight,
                                   ),
                        ),SizedBox(width: 4,),
                      ],
                    ),
                 ),

                 SizedBox(height: 15,),

                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Additional Information '),
                    ],
                  ),
                  SizedBox(height: 8,),

                  
            ],
          ),
        ),  
    );
  }
}