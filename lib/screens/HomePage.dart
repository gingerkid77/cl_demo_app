import 'package:flutter/material.dart';

//Moved HomePage widget to a separate file
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Variables to hold state of input fields in the form
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Input field for the email address
            TextFormField(
              onChanged: (val) {
                setState(() => email = val);
              },
            ),
            // Input field for the password
            TextFormField(
              onChanged: (val) {
                setState(() => password = val);
              },
            ),
            RaisedButton(
                color: Colors.pink[400],
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
      )
    );
  }
}