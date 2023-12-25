import 'package:chat_app/screens/splash_screen.dart';
import 'package:chat_app/utils/themes/themes.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
     theme: lightTheme,
     darkTheme: darkTheme,


    );
  }
}