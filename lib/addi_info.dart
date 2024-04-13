import 'package:flutter/material.dart';

class Additional_Information extends StatelessWidget {
  
  final IconData icon;
  final String textInfo;
  final String number;
  
  const Additional_Information(
    {
    super.key,
    required this.icon,
    required this.textInfo,
    required this.number,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(14.0),
      child: Container(
        child: Column(
          children: [
            Icon(
              icon,
              size: 35,
            ),
            Text(
              textInfo,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text(
              number,
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
