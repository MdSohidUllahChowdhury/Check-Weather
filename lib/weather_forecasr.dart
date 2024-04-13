import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  const Forecast({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container( //5
        height: 95,
        width: 80,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
               Text('6:25',
               style: 
               TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
               Icon(Icons.cloud,size: 30,),
               Text('301.25',style: TextStyle(fontSize: 12),)
            ],
          ),
        ),
        
        ),
    );
                        
  
  }
}