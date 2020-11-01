import 'package:flutter/material.dart';

const kTextfieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.mail_outline,
  ),
  filled: true,
  fillColor: Colors.white,
  hintText: 'Name',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFFF7D00),
      width: 4,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFff7d00),
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(15.0),
    ),
  ),
  focusColor: Color(0xFFff7d00),
);

//BMI

const kBottomContainerHeight = 68.0;
const kActiveCardColour = Color(0xFF1D1E33);
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
  color: Colors.green,
  fontWeight: FontWeight.bold,
);
