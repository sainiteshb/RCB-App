import 'package:flutter/material.dart';
import 'package:rcb_app/helpers/TeamContainer.dart';

class TeamView extends StatefulWidget {
  const TeamView({
    Key key,
    @required PageController controller,
    @required this.offset,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;
  final double offset;

  @override
  _TeamViewState createState() => _TeamViewState();
}

class _TeamViewState extends State<TeamView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      pageSnapping: false,
      scrollDirection: Axis.vertical,
      controller: widget._controller,
      children: [
        TeamContainer(
          index: '0',
          offset: widget.offset,
          i: 0.0,
          text: 'VIRAT KOHLI',
        ),
        TeamContainer(
          index: '1',
          offset: widget.offset,
          i: 1.0,
          text: 'AB DE VILLIERS',
        ),
        TeamContainer(
          index: '2',
          offset: widget.offset,
          i: 2.0,
          text: 'DEVDUTT PADIKKAL',
        ),
        TeamContainer(
          index: '3',
          offset: widget.offset,
          i: 3.0,
          text: 'GLENN MAXWELL',
        ),
        TeamContainer(
          index: '4',
          offset: widget.offset,
          i: 4.0,
          text: 'YUZVENDRA CHAHAL',
        ),
        TeamContainer(
          index: '5',
          offset: widget.offset,
          i: 5.0,
          text: 'MOHAMMED SIRAJ',
        ),
        TeamContainer(
          index: '6',
          offset: widget.offset,
          i: 6.0,
          text: 'ADAM ZAMPA',
        ),
        TeamContainer(
          index: '7',
          offset: widget.offset,
          i: 7.0,
          text: 'NAVDEEP SAINI',
        ),
        TeamContainer(
          index: '8',
          offset: widget.offset,
          i: 8.0,
          text: 'DAN CHRISTIAN',
        ),
        TeamContainer(
          index: '9',
          offset: widget.offset,
          i: 9.0,
          text: 'KYLE JAMIESON',
        ),
        TeamContainer(
          index: '10',
          offset: widget.offset,
          i: 10.0,
          text: 'WASHINGTON SUNDAR',
        ),
        TeamContainer(
          index: '11',
          offset: widget.offset,
          i: 11.0,
          text: 'DANIEL SAMS',
        ),
        TeamContainer(
          index: '12',
          offset: widget.offset,
          i: 12.0,
          text: 'KANE RICHARDSON',
        ),
        TeamContainer(
          index: '13',
          offset: widget.offset,
          i: 13.0,
          text: 'MOHAMMED AZHARUDDEEN',
        ),
        TeamContainer(
          index: '14',
          offset: widget.offset,
          i: 14.0,
          text: 'SHAHBAZ AHMED',
        ),
        TeamContainer(
          index: '15',
          offset: widget.offset,
          i: 15.0,
          text: 'HARSHAL PATEL',
        ),
        TeamContainer(
          index: '16',
          offset: widget.offset,
          i: 16.0,
          text: 'SACHIN BABY',
        ),
        TeamContainer(
          index: '17',
          offset: widget.offset,
          i: 17.0,
          text: 'FINN ALLEN',
        ),
        TeamContainer(
          index: '18',
          offset: widget.offset,
          i: 18.0,
          text: 'RAJAT PATIDAR',
        ),
        TeamContainer(
          index: '19',
          offset: widget.offset,
          i: 19.0,
          text: 'PAVAN DESHPANDE',
        ),
        TeamContainer(
          index: '20',
          offset: widget.offset,
          i: 20.0,
          text: 'SUYASH PRABHUDESSAI',
        ),
        TeamContainer(
          index: '21',
          offset: widget.offset,
          i: 21.0,
          text: 'KONA SRIKAR BHARAT',
        ),
      ],
    );
  }
}
