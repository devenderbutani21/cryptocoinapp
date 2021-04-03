import 'package:cryptocoinapp/screens/home_screen.dart';
import 'package:cryptocoinapp/screens/info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Coin App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => HomeScreen(),
        '/info' : (context) =>    InfoScreen(),
      },
    );
  }
}
