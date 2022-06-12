import 'package:cyberkom_app/pages/home/chat_home.dart';
import 'package:cyberkom_app/pages/home/home_page.dart';
import 'package:cyberkom_app/pages/home/main_home.dart';
import 'package:cyberkom_app/pages/home/profile_home.dart';
import 'package:cyberkom_app/pages/login_page.dart';
import 'package:cyberkom_app/pages/register_page.dart';
import 'package:cyberkom_app/utils/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/main': (context) => MainHomePage(),
        '/home': (context) => HomePage(),
        '/chat-room': (context) => ChatHomePage(),
        '/profile': (context) => ProfileHomePage(),
      },
    );
  }
}
