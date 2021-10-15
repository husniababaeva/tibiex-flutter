// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'auth/SignUp.dart';
//import 'auth/otp.dart';
//import 'auth/SignUpNumber.dart';
//import 'auth/succesful.dart';
//import 'auth/login.dart';
//import 'auth/lists.dart';
//import 'auth/speed_dial.dart';
import 'profile/profile.dart';






void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "shopping cart",
      // theme: kDarkTheme,
      debugShowCheckedModeBanner: false,
      home: profile(), //SpeedFab(),//HomePage(),////Otp(),login(),SingUpNumber(),SignUp(),FabWithIcons(),Successful(),


    );
  }
}





