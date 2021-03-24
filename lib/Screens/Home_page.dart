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
                  Container()
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
  final double height;
  Box({this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.red,
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
    );
  }
}
