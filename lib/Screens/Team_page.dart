import 'package:flutter/material.dart';
import 'package:rcb_app/helpers/TeamView.dart';

class TeamPage extends StatefulWidget {
  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  PageController _controller;
  double offset = 0;
  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.6);
    _controller.addListener(() {
      setState(() {
        offset = _controller.page;
        //print(offset);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return TeamView(
      controller: _controller,
      offset: offset,
    );
  }
}
