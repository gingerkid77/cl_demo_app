import 'package:flutter/material.dart';
import 'package:requests/requests.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map widgetData = {};

  @override
  Widget build(BuildContext context) {

    widgetData = ModalRoute.of(context).settings.arguments;

    String authToken = widgetData['authToken'];

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
                  dynamic profileData = await _getProfileData(authToken);

                  if(profileData != null) {
                    // load the details page

                    Navigator.pushNamed(context, '/profile', arguments: {
                    'profileData': profileData
                    });
                  }
                  else {
                    // handle the error here with a nice message?
                  }


                }
            ),
          ],
        ),
      )
    );
  }

  // private method to get the profile data
  Future<dynamic> _getProfileData(authToken) async {

    // some debug to make sure the values are coming through ok
    print('Getting profile data with token $authToken');

    Response response;

    // Setup the headers as a map
    Map<String, String> requestHeaders = {};
    requestHeaders['ClasslistToken'] = authToken;

    try {

      // invoke the API to load profile data
      response = await Requests.get(
          'https://api.classlist.com/_ah/api/parent/v1/70670680/get/myprofile',
          headers: requestHeaders
      );

      response.raiseForStatus();

      // get the response and debug it
      dynamic json = response.json();

      return json;
    }
    catch(e)
    {
      print('Failed to log in successfully $e ${response.statusCode}');
    }

    return null;
  }
}