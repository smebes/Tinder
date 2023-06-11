import 'package:flutter/material.dart';
import 'package:tinder/Screens/SplashScreen.dart';
import 'package:tinder/Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tinder Clone',
      theme: ThemeData(
          primaryColor: const Color.fromRGBO(253, 41, 123, 1.0),
          secondaryHeaderColor: const Color.fromRGBO(255, 88, 100, 1.0),
          accentColor: const Color.fromRGBO(255, 101, 91, 1.0)),
      home: SplashScreen(),
    );
  }
}
