import 'package:cyberkom_app/pages/book/main_book.dart';
import 'package:cyberkom_app/pages/home/chat_home.dart';
import 'package:cyberkom_app/pages/home/home_page.dart';
import 'package:cyberkom_app/pages/home/main_home.dart';
import 'package:cyberkom_app/pages/home/profile_home.dart';
import 'package:cyberkom_app/pages/info/main_info.dart';
import 'package:cyberkom_app/pages/login_page.dart';
import 'package:cyberkom_app/pages/news/main_berita.dart';
import 'package:cyberkom_app/pages/register_page.dart';
import 'package:cyberkom_app/utils/splash_logo.dart';
import 'package:cyberkom_app/utils/splash_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/logo': (context) => const SplashLogo(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/main': (context) => const MainHomePage(),
        '/home': (context) => const HomePage(),
        '/chat-room': (context) => const ChatHomePage(),
        '/profile': (context) => const ProfileHomePage(),
        '/book': (context) => const BookHome(),
        '/berita': (context) => const BeritaHome(),
        '/info': (context) => const InfoHome(),
      },
    );
  }
}
