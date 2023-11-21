class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final String weatherCondition;
  final String hestory;
  final double wind;
  final double visibility;
  final int humidity;

  final String hour12;
  final String imgHour12;
  final double hurTemp12;

  final String hour21;
  final String imgHour21;
  final double hurTemp21;

  final String hour15;
  final String imgHour15;
  final double hurTemp15;

  final String hour18;
  final String imgHour18;
  final double hurTemp18;

  final String hour24;
  final String imgHour24;
  final double hurTemp24;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.wind,
      required this.visibility,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherCondition,
      required this.hestory,
      required this.humidity,
      required this.hour15,
      required this.imgHour15,
      required this.hurTemp15,
      required this.hour18,
      required this.imgHour18,
      required this.hurTemp18,
      required this.hour21,
      required this.imgHour21,
      required this.hurTemp21,
      required this.hour24,
      required this.imgHour24,
      required this.hurTemp24,
      required this.hour12,
      required this.imgHour12,
      required this.hurTemp12});

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      hestory: json['location']['localtime'],
      date: json['current']['last_updated'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      wind: json['current']['wind_kph'],
      visibility: json['current']['vis_km'],
      humidity: json['current']['humidity'],
      image: json['current']['condition']['icon'],
      weatherCondition: json['current']['condition']['text'],
      hour12: json['forecast']['forecastday'][0]['hour'][12]['time'],
      imgHour12: json['forecast']['forecastday'][0]['hour'][12]['condition']
          ['icon'],
      hurTemp12: json['forecast']['forecastday'][0]['hour'][12]['temp_c'],
      hour15: json['forecast']['forecastday'][0]['hour'][15]['time'],
      imgHour15: json['forecast']['forecastday'][0]['hour'][15]['condition']
          ['icon'],
      hurTemp15: json['forecast']['forecastday'][0]['hour'][15]['temp_c'],
      hour18: json['forecast']['forecastday'][0]['hour'][18]['time'],
      imgHour18: json['forecast']['forecastday'][0]['hour'][18]['condition']
          ['icon'],
      hurTemp18: json['forecast']['forecastday'][0]['hour'][18]['temp_c'],
      hour21: json['forecast']['forecastday'][0]['hour'][21]['time'],
      imgHour21: json['forecast']['forecastday'][0]['hour'][21]['condition']
          ['icon'],
      hurTemp21: json['forecast']['forecastday'][0]['hour'][21]['temp_c'],
      hour24: json['forecast']['forecastday'][0]['hour'][23]['time'],
      imgHour24: json['forecast']['forecastday'][0]['hour'][23]['condition']
          ['icon'],
      hurTemp24: json['forecast']['forecastday'][0]['hour'][23]['temp_c'],
    );
  }
}
