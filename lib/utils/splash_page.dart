import 'dart:async';

import 'package:cyberkom_app/theme.dart';
import 'package:cyberkom_app/utils/splash_logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Get.to(
        SplashLogo(),
        transition: Transition.zoom,
        duration: Duration(
          seconds: 1,
        ),
      ),
    );
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/img/cyberkom.png'),
            ),
          ),
        ),
      ),
    );
  }
}
