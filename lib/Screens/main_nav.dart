import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rcb_app/Screens/ConnectPage.dart';
import 'package:rcb_app/Screens/Team_page.dart';

import 'Home_page.dart';
import 'NewsPage.dart';

int _selectedIndex = 0;
TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

List<Widget> _pages = <Widget>[
  HomePage(),
  TeamPage(),
  NewsPage(),
  ConnectPage(),
];

class MainNav extends StatefulWidget {
  @override
  _MainNavState createState() => _MainNavState();
}

class _MainNavState extends State<MainNav> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          leading: Image(
            image: AssetImage('assets/icon.png'),
          ),
          centerTitle: true,
          title: Text(
            'Royal Challengers Bangalore',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        body: _pages.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black,
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(20),
              //   topRight: Radius.circular(20),
              // ),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
              ]),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  gap: 8,
                  activeColor: Colors.white,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  duration: Duration(milliseconds: 800),
                  tabBackgroundColor: Colors.grey[800],
                  tabs: [
                    GButton(
                      icon: FontAwesomeIcons.home,
                      iconColor: Colors.white,
                      backgroundColor: Colors.red,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.sports_cricket,
                      iconColor: Colors.white,
                      backgroundColor: Colors.red,
                      text: 'Team',
                    ),
                    GButton(
                      icon: Icons.photo,
                      iconColor: Colors.white,
                      backgroundColor: Colors.red,
                      text: 'Pictures',
                    ),
                    GButton(
                      backgroundColor: Colors.red,
                      iconColor: Colors.white,
                      icon: FontAwesomeIcons.rocket,
                      text: 'Connect',
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
