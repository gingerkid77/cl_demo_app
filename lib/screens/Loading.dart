import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';


// A loading page. At the moment only loads user authentication token
// from shared prefs, but could do more in a full app
class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void _checkForLoginState() async {

    // load the prefs and check for the auth token
    final prefs = await SharedPreferences.getInstance();

    String authToken = prefs.get('authToken') ?? '';

    // if the token is blank go to login, otherwise home
    if(authToken == '') {
      print('Redirecting to user login page as an auth token was found');
      Navigator.pushReplacementNamed(context, '/login');
    }else{
      print('Redirecting to user home page as an auth token was found');
      Navigator.pushReplacementNamed(context, '/home', arguments: {
        'authToken':authToken
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _checkForLoginState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: SpinKitFadingCube(
              color: Colors.white,
              size: 50.0,
            )
        )
    );
  }
}