import 'package:flutter/material.dart';

import 'views/screens/AuthScreen/Auth_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber-like App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: AuthScreen(), // Start with the Login Screen
    );
  }
}
