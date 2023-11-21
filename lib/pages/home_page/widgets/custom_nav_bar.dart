import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:weather_app/constants/constant.dart';
import 'package:weather_app/pages/Account_Page/account_page.dart';
import 'package:weather_app/pages/Search_Page/search_page.dart';
import 'package:weather_app/pages/home_page/home_page.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _currentIndex = 0;
  List<Widget> list = <Widget>[
    const HomePage(),
    const SearchPage(),
    const AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list.elementAt(_currentIndex),
      bottomNavigationBar: GNav(
        backgroundColor: lightBlue,
        color: Colors.white,
        activeColor: Colors.white,
        selectedIndex: _currentIndex,
        onTabChange: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        tabs: const [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.search, text: 'Search'),
          GButton(icon: Icons.account_box, text: 'Account'),
        ],
      ),
    );
  }
}
