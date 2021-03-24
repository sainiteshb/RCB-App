import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'Home_page.dart';

int _selectedIndex = 0;
TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

List<Widget> _pages = <Widget>[
  HomePage(),
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
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
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
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
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
                      backgroundColor: Colors.red,
                      text: 'Home',
                    ),
                    GButton(
                      icon: FontAwesomeIcons.globeAsia,
                      backgroundColor: Colors.red,
                      text: 'Planets',
                    ),
                    GButton(
                      icon: Icons.photo,
                      backgroundColor: Colors.red,
                      text: 'Pictures',
                    ),
                    GButton(
                      backgroundColor: Colors.red,
                      icon: FontAwesomeIcons.rocket,
                      text: 'Explore',
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
