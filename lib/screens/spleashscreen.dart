import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:furniture_shop_ui/screens/2nd_page.dart';
import 'package:furniture_shop_ui/screens/home.dart';

class Spleash_screen extends StatefulWidget {
  Spleash_screen({Key key}) : super(key: key);

  @override
  _Spleash_screenState createState() => _Spleash_screenState();
}

class _Spleash_screenState extends State<Spleash_screen> {
  @override
  void initState() {
    Timer(Duration(seconds: 10), nextpage);
    super.initState();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xFF4398B8),
        ),
        child: Center(
          child: Container(
              height: 300,
              child: FlareActor(
                "assets/logo.flr",
                animation: "start",
              )),
        ),
      ),
    );
  }

  nextpage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page2()));
  }
}
