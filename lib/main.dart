import 'package:ecommerce_project/screens/home_screen.dart';
import 'package:ecommerce_project/screens/login_screen.dart';
import 'package:ecommerce_project/utils/routes.dart';
import 'package:ecommerce_project/utils/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      // darkTheme: ThemeData(brightness: Brightness.dark), //for dark theme
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.lightTheme(context),
      themeMode: ThemeMode.light,

      initialRoute: MyRotues.homeRoute,

      routes: {
        "/": (context) => HomeScreen(),
        MyRotues.loginRoute: (context) => LoginScreen(),
        MyRotues.homeRoute: (context) => HomeScreen(),
      },
    );
  }
}
