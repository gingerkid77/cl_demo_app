import 'package:flutter/material.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class UserProfilePage extends StatefulWidget {
  UserProfilePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

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