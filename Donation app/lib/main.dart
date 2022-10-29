import 'package:flutter/material.dart';
import 'package:helloworld/screens/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Color headerColor = const Color(0xFF1E385D);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: headerColor,
            ),
      ),
      home: LoginPage(),
    );
  }
}
