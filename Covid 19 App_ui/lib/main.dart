import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:todo_list/cards.dart';
// import 'package:todo_list/home_screen.dart';
import 'package:todo_list/intro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home:AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/gloves.png'
        ),
        nextScreen:Introduction(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Colors.amber,
        duration: 300,
        // splash: Container(
        //   height: 400.0,
        //   width: 400.0,
        //   color: Colors.black,
        // ),
      ),
    );
  }
}
