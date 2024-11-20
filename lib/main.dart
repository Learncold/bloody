import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'ApplyScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Certificate App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/apply': (context) => ApplyScreen(),
      },
    );
  }
}