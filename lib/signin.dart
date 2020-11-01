import 'package:flutter/material.dart';
import 'constants.dart';
import 'round_button.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:nelumbus_tech/event.dart';
import 'signup.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  static const String id = 'signin';

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // final _auth = FirebaseAuth.instance;
  // String username;
  // String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
////      backgroundColor: Color(0xff005e54),
//      appBar: AppBar(
////        backgroundColor: Color(0xff005e54),
//        title: Text(
//          'SignIn',
//        ),
//      ),
      body: ListView(children: <Widget>[
        Container(
          child: Image(
            image: AssetImage(
              'images/bjp.jpg',
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFFFF7D00),
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
            ),
            Container(
              child: Text(
                'Please sign in to continue',
                style: TextStyle(
                  color: Color(0xFF009C39),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
            )
          ],
        ),
//        Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Center(
////                child: Text(
////                  'LogIn To Your Account',
////                  style: TextStyle(
////                    color: Colors.white,
////                    fontSize: 20,
////                    fontWeight: FontWeight.bold,
////                    fontStyle: FontStyle.italic,
////                  ),
////                ),
//              ),
//        ),
//        SizedBox(
//          height: 60,
//        ),
        DropDownField(
          controller: typeSelected,
          hintText: ("Type Of User"),
          enabled: true,
          items: type,
          onValueChanged: (value) {
            setState(() {
              selectUser = value;
            });
          },
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: TextField(
            textAlign: TextAlign.center,
            // onChanged: (value) {
            //   username = value;
            // },
            decoration: kTextfieldDecoration.copyWith(
              hintText: 'Username',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              // onChanged: (value) {
              //   password = value;
              // },
              decoration: kTextfieldDecoration.copyWith(
                  hintText: 'PASSWORD',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ))),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
          child: RoundButton(
            text: 'LOGIN',
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EventFeed()));
            },

            //Pratik Code

            // onPress: () async {
            //   final user = await _auth.signInWithEmailAndPassword(
            //       email: username, password: password);
            //   if (user != null) {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (context) => HomeScreen(),
            //         ));
            //   }
            // },
          ),
        ),
        Container(
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xff009c39),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    color: Color(0xff009c39),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )

//        SizedBox(
//          width: 200.0,
//          height: 10,
//          child: Divider(
//            thickness: 2.0,
//            color: Colors.white,
//          ),
//        ),
//        SizedBox(
//          height: 10,
//        ),
//        Text(
//          "Don't Already Have An Account ?",
//          style: TextStyle(
//            color: Colors.black,
//            fontWeight: FontWeight.bold,
//            fontSize: 15,
//          ),
//        ),
//        RoundButton(
//          text: 'SignUp',
//          onPress: () {
//            Navigator.pushNamed(context, SignUp.id);
//          },
//        ),
      ]),
    );
  }
}

String selectUser = "";
final typeSelected = TextEditingController();
List<String> type = [
  "MP",
  "MLA",
  "User",
];

//Changes
//Candidate Selection on signup page
//Filter(Central and State)
//Firebase authentication
//Addition of one more field
//Membership login id by party head
//Refration
//Optimisation
//Live News
//Live Chat Bot
