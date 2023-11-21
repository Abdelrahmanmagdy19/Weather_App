import 'package:flutter/material.dart';
import 'package:weather_app/constants/constant.dart';
import 'package:weather_app/models/weather_models.dart';

class ContainerHour extends StatelessWidget {
  const ContainerHour({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration: const BoxDecoration(
            color: Color(0xFF1C2B70),
            borderRadius: BorderRadius.all(Radius.circular(18))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    '${stringToDateTime(weatherModel.hour12).hour.toString()} Am',
                    style: weatherHour,
                  ),
                  Image.network('https:${weatherModel.imgHour12}'),
                  Text(
                    weatherModel.hurTemp12.round().toString(),
                    style: weatherHour,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '${stringToDateTime(weatherModel.hour15).hour.toString()} Am',
                    style: weatherHour,
                  ),
                  Image.network('https:${weatherModel.imgHour15}'),
                  Text(
                    weatherModel.hurTemp15.round().toString(),
                    style: weatherHour,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '${stringToDateTime(weatherModel.hour18).hour.toString()} Bm',
                    style: weatherHour,
                  ),
                  Image.network('https:${weatherModel.imgHour18}'),
                  Text(
                    weatherModel.hurTemp18.round().toString(),
                    style: weatherHour,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '${stringToDateTime(weatherModel.hour21).hour.toString()} Bm',
                    style: weatherHour,
                  ),
                  Image.network('https:${weatherModel.imgHour21}'),
                  Text(
                    weatherModel.hurTemp21.round().toString(),
                    style: weatherHour,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '${stringToDateTime(weatherModel.hour24).hour.toString()} Bm',
                    style: weatherHour,
                  ),
                  Image.network('https:${weatherModel.imgHour24}'),
                  Text(
                    weatherModel.hurTemp24.round().toString(),
                    style: weatherHour,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  DateTime stringToDateTime(String value) {
    return DateTime.parse(value);
  }
}
