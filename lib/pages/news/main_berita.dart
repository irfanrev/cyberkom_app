import 'package:flutter/material.dart';

class BeritaHome extends StatelessWidget {
  const BeritaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Text('Listview Berita'),
        ],
      ),
    );
  }
}
