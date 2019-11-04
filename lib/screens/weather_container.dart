import 'package:flutter/material.dart';
import 'package:lecture_4/models/weather.dart';

class WeatherContainer extends StatelessWidget {

  const WeatherContainer({Key key, @required this.weather})
      : assert(weather != null),
        super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    final _locationName = '${weather.locationName}';
    final _locationTemp = '${weather.temperature} °C';
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Column(
            children: <Widget>[
              _getWeatherText(context,'$_locationName - $_locationTemp'),
              Image.network(weather.iconUrl),
            ],
          );
        } else {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _getWeatherText(context, _locationName),
                  _getWeatherText(context, _locationTemp)
                ],
              ),
              Image.network(weather.iconUrl),
            ],
          );
        }
      },
    );
  }

  Widget _getWeatherText(BuildContext context, String text){
    return Text(
      '$text',
      style: Theme.of(context).textTheme.display1,
      textAlign: TextAlign.center,
    );
  }
}