import 'package:flutter/material.dart';
import 'package:sneaker_app/screen/detail_screen.dart';
import 'package:sneaker_app/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Averta',
        ),
        home: HomePage());
  }
}
