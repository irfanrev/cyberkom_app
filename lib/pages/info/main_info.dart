import 'dart:html';

import 'package:flutter/material.dart';

class InfoHome extends StatelessWidget {
  const InfoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text('List Info'),
        ],
      ),
    );
  }
}
