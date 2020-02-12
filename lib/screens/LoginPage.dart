import 'package:flutter/material.dart';

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
                    print(email);
                    print(password);
                  }
              ),
            ],
          ),
        ),
      )
    );
  }
}