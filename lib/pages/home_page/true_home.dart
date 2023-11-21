import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_models.dart';
import 'package:weather_app/pages/home_page/widgets/custom_container_hour.dart';
import 'package:weather_app/pages/home_page/widgets/custom_container_weather_detales.dart';

class TrueHomePage extends StatelessWidget {
  const TrueHomePage({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 9),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              weatherModel.hestory,
              style: const TextStyle(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  'https:${weatherModel.image}',
                ),
                const SizedBox(height: 10),
                Text(
                  weatherModel.temp.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Text(
                      'H: ${weatherModel.maxTemp.round()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'L: ${weatherModel.minTemp.round()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              weatherModel.weatherCondition,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 10),
            ContainerHour(weatherModel: weatherModel),
            ContainerWeatherDetales(
              weatherModel: weatherModel,
            )
          ],
        ),
      ),
    );
  }
}
