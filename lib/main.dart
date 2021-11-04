// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'auth/SignUp.dart';
//import 'auth/otp.dart';
//import 'auth/SignUpNumber.dart';
//import 'auth/succesful.dart';
//import 'auth/login.dart';

import 'package:tibiex/pages/home/home_cards_page.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "shopping cart",
      // theme: kDarkTheme,
      debugShowCheckedModeBanner: false,
      home: HomeCardsPage(), //profile(),HomePage(),Otp(),Login(),
      // SingUpNumber(),
      // SignUp(),FabWithIcons(),Successful(),
    );
  }
}