// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'auth/SignUp.dart';
//import 'auth/otp.dart';
//import 'auth/SignUpNumber.dart';
//import 'auth/succesful.dart';
//import 'auth/login.dart';
//import 'auth/lists.dart';
// import 'auth/speed_dial.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Qeydiyyat",
      debugShowCheckedModeBanner: false,
      home: SignUp(),//FabWithIcons(),//Successful(),//SingUpNumber(),
        // SpeedFab(),,

    );
  }
}





