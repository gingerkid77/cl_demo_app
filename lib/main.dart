import 'package:flutter/material.dart';
import 'screens/HomePage.dart';

void main() => runApp(ClasslistDemoApp());

class ClasslistDemoApp extends StatelessWidget {

  // Build the root of the application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Classlist Demo App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'Classlist Demo Home Page'),
    );
  }
}




