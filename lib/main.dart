import 'package:flutter/material.dart';
import 'package:praticeflutter/pages/background_color_page.dart';
import 'package:praticeflutter/pages/counter_page.dart';
import 'package:praticeflutter/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/counterpage': (context) => const CounterPage(),
        '/backgroundcolorpage': (context) => const BackgroundColorPage(),
      },
    );
  }
}
