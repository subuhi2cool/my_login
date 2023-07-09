import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_login/utils/routes.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
       primarySwatch: Colors.deepPurple,
      ),

      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginScreen(),
        MyRoutes.homeRoute: (context) => const HomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginScreen()
      },
    );
  }
}
