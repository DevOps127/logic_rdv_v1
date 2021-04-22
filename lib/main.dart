import 'package:flutter/material.dart';
import 'package:ui_1/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF4e8fda),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
