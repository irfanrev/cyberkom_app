import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: GoogleFonts.poppins(
                fontSize: 22.0,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Silahkan login menggunakan email',
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan email',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: Get.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.security),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Masukan password',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget btnLogin() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.amber[500],
            ),
            onPressed: () {},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    Widget btnTextRegis() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun?',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: Text(
                  'Register',
                  style: GoogleFonts.poppins(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w400,
                  ),
                ))
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff0C1141),
      body: ListView(
        children: [
          header(),
          emailInput(),
          btnLogin(),
          btnTextRegis(),
        ],
      ),
    );
  }
}
