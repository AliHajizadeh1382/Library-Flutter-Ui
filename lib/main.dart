import 'package:flutter/material.dart';
import 'package:librari/src/my_colors.dart';
import 'package:librari/view/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: SloidColors.title1,
        ),
        headline2: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: SloidColors.title1,
        ),
        headline3: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: SloidColors.title2,
        ),
        headline4: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: SloidColors.title2,
        ),
        headline5: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: SloidColors.title1,
        ),
        headline6: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: SloidColors.primaryColor,
        ),
      )),
      debugShowCheckedModeBanner: false,
      home: MyLisbraryPage(),
    );
  }
}
