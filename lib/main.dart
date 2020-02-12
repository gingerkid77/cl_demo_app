import 'package:cl_demo_app/screens/ProfileDetails.dart';
import 'package:cl_demo_app/screens/UserHomePage.dart';
import 'package:flutter/material.dart';
import 'screens/LoginPage.dart';

void main() => runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/': (context) => LoginPage(),
      '/home': (context) => HomePage(),
      '/profile': (context) => ProfileDetailsPage(),
    }

));






