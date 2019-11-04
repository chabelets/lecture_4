import 'package:flutter/material.dart';
import 'package:lecture_4/models/weather.dart';
import 'package:lecture_4/resources/weather_provider.dart';
import 'package:lecture_4/screens/weather_container.dart';

class WeatherOverview extends StatelessWidget {
  final _weatherProvider = WeatherProvider();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder<Weather>(
          future: _weatherProvider.getCurrentWeather(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data.temperature);
              return WeatherContainer(weather: snapshot.data);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        )
    );
  }
}