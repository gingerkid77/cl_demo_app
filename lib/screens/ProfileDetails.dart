import 'package:flutter/material.dart';

// User Profile Page
// keeping it as stateful as we'll be passing in the auth token
class ProfileDetailsPage extends StatefulWidget {

  @override
  _ProfileDetailsPageState createState() => _ProfileDetailsPageState();
}

class _ProfileDetailsPageState extends State<ProfileDetailsPage> {

  dynamic profileData = {};

  @override
  Widget build(BuildContext context) {

    dynamic widgetArguments = ModalRoute.of(context).settings.arguments;

    profileData = widgetArguments['profileData'];

    print('Number of pupils is ${profileData['pupils'].length}');

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
              backgroundImage: NetworkImage(profileData['avatar']),
              radius: 50.0,
            ),
            SizedBox(height: 15.0),
            Text(
              'Name',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              )
            ),
            Text(
              '${profileData['firstName']} ${profileData['lastName']}'
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
                '${profileData['address']['houseName']} ${profileData['address']['streetAddress']} ${profileData['address']['city']} ${profileData['address']['postCode']}'
            ),
            SizedBox(height: 15.0),
            Text(
                'Pupils',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            // Flexible stops infinite sizing errors
            Flexible(
              child:
                ListView.builder(
                  // use this property to stop the list expanding to the max of the screen
                  shrinkWrap: true,
                  itemCount: profileData['pupils'].length,
                    itemBuilder: (context, index) {

                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                              '${profileData['pupils'][index]['firstName']} ${profileData['pupils'][index]['lastName']}'
                          ),
                          Text(
                              '${profileData['pupils'][index]['secondTierName']}'
                          ),
                          Text(
                              '${profileData['pupils'][index]['firstTierName']}'
                          ),
                        ],
                      );
                    }
                ),
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
            ),
            SizedBox(height: 15.0),
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