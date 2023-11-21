import 'package:flutter/material.dart';
import 'package:weather_app/constants/constant.dart';
import 'package:weather_app/pages/intro_page/widgets/Custom_Botton.dart';
import 'package:weather_app/pages/signin_page/widgets/custom_appbar.dart';
import 'package:weather_app/pages/signin_page/widgets/custom_text_filed.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            darkBlue,
            lightBlue,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const CustomAppBar(number: 1),
                const SizedBox(height: 35),
                const CustomTextFiled(
                    hintText: 'Required',
                    textInputType: TextInputType.name,
                    textinfo: 'UserName'),
                const CustomTextFiled(
                    textinfo: 'Email',
                    hintText: 'Required',
                    textInputType: TextInputType.emailAddress),
                const CustomTextFiled(
                    hintText: 'Required',
                    textInputType: TextInputType.phone,
                    textinfo: 'Phone'),
                const CustomTextFiled(
                    hintText: 'at least 8 characters',
                    textInputType: TextInputType.visiblePassword,
                    textinfo: 'Password'),
                const SizedBox(height: 35),
                CustomBotton(
                  mainAxisalignment: MainAxisAlignment.center,
                  text: 'SignIn',
                  onPress: () {
                    Navigator.pushNamed(context, 'CustomNavBar');
                  },
                  color: darkBlue,
                  textColor: Colors.white,
                  width: 350,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    'Or',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                CustomBotton(
                  image: 'images/facebook.png',
                  mainAxisalignment: MainAxisAlignment.spaceBetween,
                  text: 'continue withe Facebook',
                  onPress: () {},
                  color: Colors.white,
                  textColor: Colors.black,
                  width: 350,
                ),
                const SizedBox(height: 10),
                CustomBotton(
                    image: 'images/google.png',
                    mainAxisalignment: MainAxisAlignment.spaceBetween,
                    text: 'continue withe Google',
                    onPress: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    width: 350),
                const SizedBox(height: 10),
                CustomBotton(
                    image: 'images/apple.png',
                    mainAxisalignment: MainAxisAlignment.spaceBetween,
                    text: 'continue withe Apple',
                    onPress: () {},
                    color: Colors.white,
                    textColor: Colors.black,
                    width: 350),
                const SizedBox(height: 30),
                const SizedBox(
                  width: 350,
                  child: Text(
                    '''By clicking Sign Up ,continue withe Facebook,continue withe Google or continue withe Apple ,you agree to our terms and coditions and privacystatment. ''',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
