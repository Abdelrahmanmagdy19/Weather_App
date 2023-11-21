import 'package:weather_app/models/weather_models.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedState(this.weatherModel);
}

class WeatherFailuerState extends WeatherState {
  final String errorMessage;

  WeatherFailuerState(this.errorMessage);
}
