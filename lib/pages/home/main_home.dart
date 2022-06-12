import 'package:cyberkom_app/pages/home/chat_home.dart';
import 'package:cyberkom_app/pages/home/home_page.dart';
import 'package:cyberkom_app/pages/home/profile_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customNavbar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(26),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
              backgroundColor: Color.fromARGB(255, 40, 40, 40),
              selectedItemColor: Colors.indigo,
              unselectedItemColor: Colors.grey[400],
              currentIndex: currentIndex,
              onTap: (value) {
                print(value);
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 8), child: Icon(Icons.home)),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Icon(Icons.comment)),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                      margin: EdgeInsets.only(top: 8),
                      child: Icon(Icons.person)),
                  label: '',
                ),
              ]),
        ),
      );
    }

    body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatHomePage();
          break;
        case 2:
          return ProfileHomePage();
          break;
        default:
      }
    }

    return Scaffold(
      backgroundColor: Color(0xff0C1141),
      bottomNavigationBar: customNavbar(),
      body: body(),
    );
  }
}
