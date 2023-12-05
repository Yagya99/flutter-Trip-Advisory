import 'package:flutter/material.dart';
import 'package:newtravelapp/screens/mainscreen.dart';
import 'package:newtravelapp/utils/constants.dart';

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      home: MainScreen(),
    );
  }
}
