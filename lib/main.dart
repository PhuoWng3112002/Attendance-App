import 'package:attendance_application/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attendance Application',
      theme: ThemeData(fontFamily: "SF-Pro-Text"),
      home: const LoginScreen(),
    );
  }
}
