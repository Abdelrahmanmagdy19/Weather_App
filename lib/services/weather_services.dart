import 'dart:developer';

import 'package:weather_app/models/weather_models.dart';
import 'package:dio/dio.dart';

class WeatherServices {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = '0e25d9ab90da447d876105228230108';

  WeatherServices(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'ops there was an error,try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('ops there was an error,try later');
    }
  }
}
