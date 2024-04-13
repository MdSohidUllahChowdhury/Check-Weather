import 'package:flutter/material.dart';

class Forecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String farenhite;
  const Forecast({
    super.key, required this.time, required this.icon, required this.farenhite});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        //5
        height: 95,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Text(
                time,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              Icon(
                icon,
                size: 30,
              ),
              Text(
                farenhite ,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
