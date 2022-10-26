import 'package:blog_app/screens/registration_screen.dart';
import 'package:flutter/material.dart';

import '../widget/WelcomeScreenCard.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Hero(
                          tag: 'logo',
                          child: Image(
                              height: 50,
                              image: AssetImage('images/x_icon.webp')),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'X chat',
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),
                WelcomeScreenCard(
                  buttonText: 'Log in',
                  buttonColor: Colors.lightBlueAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                ),
                WelcomeScreenCard(
                  buttonText: 'Register',
                  buttonColor: Colors.blue,
                  onPressed: () {
                    Navigator.pushNamed(context, RegistrationScreen.id);
                  },
                ),
              ]),
        ));
  }
}
