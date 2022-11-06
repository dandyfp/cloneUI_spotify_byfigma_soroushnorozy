import 'package:clonespotify/app/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SiginPage extends StatelessWidget {
  const SiginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 27, vertical: 36),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87.withOpacity(0.3),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 82),
                  child: Image.asset(
                    'assets/logo.png',
                    height: 33,
                    width: 108,
                  ),
                ),
              ],
            ),
            Center(
              child: Text(
                'Sign in',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(text: 'If you need any support '),
                      TextSpan(
                        text: 'click here',
                        style: TextStyle(
                          color: Color.fromARGB(255, 128, 255, 121),
                        ),
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter Usernam Or Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.hide_source),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text('Recovery Password'),
            ),
            SizedBox(
              height: 22,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(() => const HomePage());
                },
                child: Container(
                  child: Center(
                      child: Text(
                    'Sign in',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  height: 80,
                  width: 325,
                  decoration: BoxDecoration(
                      color: AppColor.colorPrimary,
                      borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Row(
                children: [
                  Container(
                    height: 5,
                    width: 146,
                    decoration: BoxDecoration(color: Color(0xffB0B0B0)),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Text(
                    'Or',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 5,
                    width: 146,
                    decoration: BoxDecoration(color: Color(0xffB0B0B0)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 51,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo_apple.png', height: 28, width: 28),
                const SizedBox(
                  width: 58,
                ),
                Image.asset('assets/logo_google.png', height: 28, width: 28)
              ],
            ),
            SizedBox(
              height: 57,
            ),
            Center(
              child: RichText(
                  text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: 'Not A Member ?'),
                  TextSpan(
                      text: ' Register Now',
                      style: TextStyle(color: Colors.blue))
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
