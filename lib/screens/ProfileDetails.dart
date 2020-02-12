import 'package:flutter/material.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class ProfileDetailsPage extends StatefulWidget {
  ProfileDetailsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Profile Details'),
      ),
      body: Container(

        // some padding to make the layout a bit better
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),

        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )
            ),
            Text(
              'Name goes here'
            ),
            SizedBox(height: 15.0),
            Text(
                'Address',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            Text(
                'Address goes here'
            )
          ],
        ),
      )
    );

  }
}