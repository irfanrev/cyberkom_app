import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
          bottom: 20,
        ),
        width: Get.width,
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Irfan Maulana',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'irfan@test.com',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget itemContent(String text) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white60,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white60,
              size: 18,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          decoration: BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General',
                style: GoogleFonts.poppins(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              itemContent('Privacy Policy'),
              itemContent('Terms and Condition'),
              itemContent('About this app'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.white),
                      ),
                      child: Center(
                        child: Text(
                          'Logout',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff0C1141),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
