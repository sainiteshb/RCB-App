import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeamContainer extends StatefulWidget {
  final String index;
  final double offset;
  final double i;
  final String text;

  TeamContainer({
    this.index,
    this.offset,
    this.i,
    this.text,
  });
  @override
  _TeamContainerState createState() => _TeamContainerState();
}

class _TeamContainerState extends State<TeamContainer> {
  double bottomPad = 40.0;
  double topPad = 0.0;
  double horiPad = 25.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (value) {
        setState(() {
          bottomPad = 50.0;
          topPad = 10.0;
          horiPad = 35.0;
        });
      },
      onTapUp: (value) {
        setState(() {
          setState(() {
            bottomPad = 40.0;
            topPad = 0.0;
            horiPad = 25.0;
          });
        });
      },
      child: AnimatedPadding(
        duration: Duration(milliseconds: 150),
        padding: EdgeInsets.only(
          left: horiPad,
          right: horiPad,
          bottom: bottomPad,
          top: topPad,
        ),
        child: Stack(
          children: [
            Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x00000000),
                              Color(0x00000000),
                              Color(0xff000000),
                            ],
                          ),
                        ),
                        child: Image.asset(
                          'assets/${widget.index}.png',
                          fit: BoxFit.fitWidth,
                          alignment: Alignment(
                              100.0, -((widget.offset.abs() + 0.4) - widget.i)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 35.0),
                        height: 110.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Royal Challengers Bangalore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            (widget.index == '0')
                ? OverflowBox(
                    minWidth: 0.0,
                    maxWidth: 200.0,
                    minHeight: 0.0,
                    maxHeight: 100.0,
                    alignment: Alignment(0.0, -1.70),
                    child: Column(
                      children: [
                        Text(
                          'SQUAD',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.red,
                              fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
