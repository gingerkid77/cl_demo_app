import 'package:cl_demo_app/screens/Loading.dart';
import 'package:cl_demo_app/screens/ProfileDetails.dart';
import 'package:cl_demo_app/screens/UserHomePage.dart';
import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';

// set up the routes and start the app
void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/profile': (context) => ProfileDetailsPage(),
    }
));






