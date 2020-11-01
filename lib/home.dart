import "package:flutter/material.dart";
import 'package:nelumbus_tech/round_button.dart';
import 'package:nelumbus_tech/signin.dart';
import 'package:nelumbus_tech/signup.dart';
import 'signin.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
          ),
          Container(
            height: 300,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/parlament.jpg',
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: RoundButton(
              text: 'SignIn',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignIn(),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
            child: RoundButton(
              text: 'SignUp',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
