import 'package:flutter/material.dart';

class CustomTheme {
  static List<ThemeData> themes = [
    ThemeData(
        primaryColor: Colors.lightGreen,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
            bodySmall: TextStyle(fontSize: 16, color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.lightGreen)),
    ThemeData(
        primaryColor: Colors.blue,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
            bodySmall: TextStyle(fontSize: 16, color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.blue)),
    ThemeData(
        primaryColor: Colors.red,
        textTheme: const TextTheme(
            bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 20, color: Colors.black),
            bodySmall: TextStyle(fontSize: 16, color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.red)),
  ];
}
