import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/pages/home_page/widgets/custom_nav_bar.dart';
import 'package:weather_app/pages/home_page/home_page.dart';
import 'package:weather_app/pages/intro_page/intro_page.dart';
import 'package:weather_app/pages/login_page/login_page.dart';
import 'package:weather_app/pages/signin_page/sigin_page.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        routes: {
          'CustomNavBar': (context) => const CustomNavBar(),
          'IntroPage': (context) => const IntroPage(),
          'LoginPage': (context) => const LoginPage(),
          'SignIn': (context) => const SignIn(),
          'HomePage': (context) => const HomePage()
        },
        initialRoute: 'IntroPage',
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
