import 'package:flutter/material.dart';
import 'package:jakone_pay_submission/utils/theme.dart';
import 'package:jakone_pay_submission/views/home_screen.dart';
import 'package:jakone_pay_submission/views/login_screen.dart';
import 'package:jakone_pay_submission/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginScreen(),
        '/homescreen': (context) => const HomeScreen()
      },
    );
  }
}
