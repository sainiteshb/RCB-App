import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.red,
              child: Row(
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/rcb.png'),
                      height: 150.0,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      reverse: true,
                      child: Row(
                        children: [
                          Box(
                            date: 'Friday, 9th April 2021',
                            match: 'MI VS RCB',
                            time: '19:30 IST',
                            venue: 'Chennai',
                          ),
                          Box(
                            date: 'Wednesday, 14th April 2021',
                            match: 'SRH VS RCB',
                            time: '19:30 IST',
                            venue: 'Chennai',
                          ),
                          Box(
                            date: 'Sunday, 18th April 2021',
                            match: 'RCB VS KKR',
                            time: '15:30 IST',
                            venue: 'Chennai',
                          ),
                          Box(
                            date: 'Thursday, 22nd April 20211',
                            match: 'RCB VS RR',
                            time: '19:30 IST',
                            venue: 'Mumbai',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                child: Image(
                    image: AssetImage('assets/virat.png'),
                    height: 290.0,
                    width: MediaQuery.of(context).size.width * 0.8),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: Text(
                '#PLAYBOLD',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w700,
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final String date, match, time, venue;
  Box({this.date, this.match, this.time, this.venue});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120.0,
        width: 170.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(13.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 5,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Details(date, 10.0),
            Details(match, 20.0),
            Details(time, 10.0),
            Details(venue, 10.0)
          ],
        ),
      ),
    );
  }
}

Widget Details(String details, double fSize) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Text(
      details,
      style: GoogleFonts.poppins(
        fontSize: fSize,
      ),
    ),
  );
}
