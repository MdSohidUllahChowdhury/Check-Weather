import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  final IconData icon;
  final String textInfo;
  final String number;

  const AdditionalInformation({
    super.key,
    required this.icon,
    required this.textInfo,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          const Divider(),
          Text(
            textInfo,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            number,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
