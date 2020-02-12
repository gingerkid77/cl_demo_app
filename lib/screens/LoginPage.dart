import 'package:flutter/material.dart';
import 'package:requests/requests.dart';

//Moved HomePage widget to a separate file
class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  // Variables to hold state of input fields in the form
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
      ),
      body: Container(

        // some padding to make the layout a bit better
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 75.0),

        child: Form(
          child: Column(

            children: <Widget>[

              SizedBox(height: 15.0),
              // Input field for the email address
              // it might be nice to have a formatter for email addresses here
              // to stop auto uppercase etc
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 15.0),
              // Input field for the password
              TextFormField(
                // obscure the text as this is a password field
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 15.0),
              RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async {
                    _attemptLogin(email, password);
                  }
              ),
            ],
          ),
        ),
      )
    );
  }

  Future<void> _attemptLogin(email, password) async {

    // some debug to make sure the values are coming through ok
    print('Logging in with [$email] [$password]');

    Response response;

    try {

      // invoke the API to authenticate
      response = await Requests.post(
          'https://api.classlist.com/_ah/api/sso/v1/signIn',
          json: {
            "email": email,
            "password": password,
            "dvcsgn": "emulatordevicesignature",
            "os": "WindowsAndroid"
          }
      );

      response.raiseForStatus();

      // get the response and debug it
      dynamic json = response.json();

      print(json);
    }
    catch(e)
    {
      print('Failed to log in successfully $e ${response.statusCode}');
    }

  }

}