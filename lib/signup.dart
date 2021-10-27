import 'constants.dart';
import 'package:flutter/material.dart';
import 'signin.dart';
import 'round_button.dart';

class SignUp extends StatefulWidget {
  static const String id = 'signup';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // DropDownField(
            //   controller: typeSelected,
            //   hintText: ("Type Of User"),
            //   enabled: true,
            //   items: type,
            //   onValueChanged: (value) {
            //     setState(() {
            //       selectUser = value;
            //     });
            //   },
            // ),
            Container(
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: Color(0xFFFF7d00),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
            ),
            Container(
              child: Text(
                'Please fill the input below here',
                style: TextStyle(
                  color: Color(0xFF009C39),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                textAlign: TextAlign.center,
                // onChanged: (value) {
                //   name = value;
                // },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'FULL NAME',
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  // onChanged: (value) {
                  //   username = value;
                  // },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'EMAIL',
                    prefixIcon: Icon(
                      Icons.mail_outline,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                textAlign: TextAlign.center,
                // onChanged: (value) {
                //   name = value;
                // },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'AADHAAR NUMBER',
                  prefixIcon: Icon(
                    Icons.confirmation_number,
                  ),
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                textAlign: TextAlign.center,
                // onChanged: (value) {
                //   name = value;
                // },
                decoration: kTextfieldDecoration.copyWith(
                  hintText: 'PAN NUMBER',
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  // onChanged: (value) {
                  //   password = value;
                  // },
                  decoration: kTextfieldDecoration.copyWith(
                    hintText: 'STATE',
                    prefixIcon: Icon(
                      Icons.location_on,
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
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
                    ),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  // onChanged: (value) {
                  //   cpassword = value;
                  // },
                  decoration: kTextfieldDecoration.copyWith(
                      hintText: 'CONFIRM PASSWORD',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                      ))),
            ),
//            Text(
//              'By creating an account you agree to our terms of service and privacy policy',
//            ),
            Container(
              margin: EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: RoundButton(
                text: 'SignUp',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                },
                //onPress: () async {
                //   try {
                //     final newUser = await _auth.createUserWithEmailAndPassword(
                //         email: username, password: password);
                //     if (newUser != null) {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) => SignIn(),
                //           ));
                //     }
                //   } catch (e) {
                //     print(e);
                //   }
                // },
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
                    'Already have a account?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignIn(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color(0xFF00E6C2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
