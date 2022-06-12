import 'dart:async';

import 'package:cyberkom_app/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.pushNamed(context, '/login'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C1141),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.grey,
        ),
      ),
    );
  }
}
