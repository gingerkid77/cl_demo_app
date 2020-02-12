import 'package:flutter/material.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class ProfileDetailsPage extends StatefulWidget {

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            CircleAvatar(
              backgroundImage: NetworkImage('https://storage.googleapis.com/class-list-api-europe/5776637916348416'),
              radius: 50.0,
            ),
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
            ),
            SizedBox(height: 15.0),
            Text(
                'Pupils',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            Text(
                'List of pupils goes here'
            ),
            SizedBox(height: 15.0),
            Text(
                'Family Members',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            Text(
                'Known family members'
            ),SizedBox(height: 15.0),
            Text(
                'Invites',
                style: TextStyle(
                  fontSize: 15.0,
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