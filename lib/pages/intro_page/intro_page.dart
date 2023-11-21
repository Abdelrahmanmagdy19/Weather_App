import 'package:flutter/material.dart';
import 'package:weather_app/constants/constant.dart';
import 'package:weather_app/pages/intro_page/widgets/Custom_Botton.dart';
import 'package:lottie/lottie.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  darkBlue,
                  lightBlue,
                  darkBlue,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 35,
                      child: Image(
                        image: AssetImage('images/weather.png'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Weather',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
                Lottie.asset('images/Animation - 1700318255145.json'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBotton(
                      mainAxisalignment: MainAxisAlignment.center,
                      width: 170,
                      textColor: darkBlue,
                      color: Colors.white,
                      text: 'Login',
                      onPress: () {
                        Navigator.pushNamed(context, 'LoginPage');
                      },
                    ),
                    CustomBotton(
                      mainAxisalignment: MainAxisAlignment.center,
                      width: 170,
                      textColor: Colors.white,
                      color: darkBlue,
                      text: 'Sign in',
                      onPress: () {
                        Navigator.pushNamed(context, 'SignIn');
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
