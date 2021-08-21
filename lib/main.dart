import 'package:ecommerce_project/screens/home_screen.dart';
import 'package:ecommerce_project/screens/login_screen.dart';
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
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: GoogleFonts.lato().fontFamily,
          ),
           // for light theme
      themeMode: ThemeMode.light,

      initialRoute: '/login',

      routes: {
        "/": (context) => HomeScreen(),
        "/login": (context) => LoginScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
