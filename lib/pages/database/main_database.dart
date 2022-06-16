import 'package:flutter/material.dart';

class DatabaseHome extends StatelessWidget {
  const DatabaseHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        backgroundColor: Color(0xff0C1141),
        elevation: 0,
        centerTitle: true,
        //leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text('Database Rayon'),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff0C1141),
      appBar: header(),
      body: ListView(
        children: [],
      ),
    );
  }
}
