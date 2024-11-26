import 'package:firstflutter/pages/about_dev.dart';
import 'package:firstflutter/pages/home_page.dart';
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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/about_dev': (context) => const AboutDev(),
      },
         theme: ThemeData(
      colorSchemeSeed: const Color.fromARGB(255, 54, 146, 57),
      scaffoldBackgroundColor: Colors.white,
    ),
    );
  }
}
