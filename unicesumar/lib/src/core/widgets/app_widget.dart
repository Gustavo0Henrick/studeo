import 'package:flutter/material.dart';
import 'package:unicesumar/src/modules/auth/login_page.dart';

import 'package:unicesumar/src/modules/home/home_page.dart';
import 'package:unicesumar/src/modules/profile/profile_page.dart';
import 'package:unicesumar/src/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unicesumar Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      initialRoute: "/splash",
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/splash": (context) => SplashPage(),
        "/profile": (context) => ProfilePage(),
      },
    );
  }
}
