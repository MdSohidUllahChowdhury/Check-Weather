import 'package:flutter/material.dart';
import 'package:weather_app/widgets/addi_info.dart';
import 'package:weather_app/widgets/main_card.dart';
import 'package:weather_app/widgets/weather_forecasr.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            customCard(),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Weather Forecast',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Forecast(
                      time: '3:23 AM', icon: (Icons.cloud), farenhite: '289'),
                  Forecast(
                      time: '12:01 PM', icon: (Icons.sunny), farenhite: '302'),
                  Forecast(
                      time: '4:29 PM', icon: (Icons.sunny), farenhite: '299'),
                  Forecast(
                      time: '5:08 PM', icon: (Icons.sunny), farenhite: '303'),
                  Forecast(
                      time: '6:48 PM', icon: (Icons.cloud), farenhite: '295'),
                  Forecast(
                      time: '7:03 PM', icon: (Icons.cloud), farenhite: '288')
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Information',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AdditionalInformation(
                    icon: (Icons.water_drop),
                    textInfo: 'Humidity',
                    number: '89'),
                AdditionalInformation(
                    icon: (Icons.air), textInfo: 'Wind Speed', number: '7.9'),
                AdditionalInformation(
                    icon: (Icons.beach_access),
                    textInfo: 'Pressure',
                    number: '1001'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
