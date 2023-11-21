import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 20),
      color: Colors.transparent,
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(width: 70),
          ToggleSwitch(
            minWidth: 90.0,
            cornerRadius: 20.0,
            activeBgColors: const [
              [Color(0xFF060E3A)],
              [Color(0xFF060E3A)]
            ],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.black,
            initialLabelIndex: number,
            totalSwitches: 2,
            labels: const ['Login', 'Sign Up'],
            radiusStyle: true,
            onToggle: (index) {
              if (index == 0) {
                Navigator.pushNamed(context, 'LoginPage');
              } else {
                Navigator.pushNamed(context, 'SignIn');
              }
            },
          ),
        ],
      ),
    );
  }
}
