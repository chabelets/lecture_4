import 'package:flutter/material.dart';
import 'package:lecture_4/models/weather.dart';
import 'package:lecture_4/screens/weather_container.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const weather =
    Weather(30, 'Kharkiv', 'http://openweathermap.org/img/wn/10d@2x.png');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Weather Overview'),
        ),
        body: Center(
          child: const WeatherContainer(
            weather: weather,
          ),
        ),
      ),
    );
  }
}