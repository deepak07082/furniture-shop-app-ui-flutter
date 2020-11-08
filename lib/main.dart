import 'package:flutter/material.dart';
import 'package:furniture_shop_ui/screens/2nd_page.dart';
import 'package:furniture_shop_ui/screens/spleashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DD Furniture',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Spleash_screen(),
    );
  }
}


