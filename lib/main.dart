import 'package:flutter/material.dart';
import 'package:project_tushar/constants.dart';
import 'package:project_tushar/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        primaryColor: kPrimeColor,
        brightness: Brightness.light,
        fontFamily: 'Karla',
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: kSecondaryColor,
            primary: kPrimeColor
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

