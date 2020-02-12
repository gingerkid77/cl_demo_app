import 'package:flutter/material.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Home Page'),
      ),
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            SizedBox(height: 50.0),
            RaisedButton(
                color: Colors.blue,
                child: Text(
                  'User Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  print('Load the user profile');
                }
            ),
          ],
        ),
      )
    );

  }
}