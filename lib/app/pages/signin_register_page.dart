import 'package:clonespotify/app/config/app_color.dart';
import 'package:clonespotify/app/pages/register_page%20copy.dart';
import 'package:clonespotify/app/pages/sigin_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninRegisterPage extends StatelessWidget {
  const SigninRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Image.asset('assets/image1.png'),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87.withOpacity(0.3),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios_new_rounded),
                      onPressed: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset('assets/logo.png', height: 71, width: 225),
                ),
                const SizedBox(
                  height: 55,
                ),
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'Enjoy listening to music',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      const Text(
                        'Spotify is a proprietary Swedish audio ',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const Text(
                        'streaming and media services provider',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Material(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColor.colorPrimary,
                              child: InkWell(
                                onTap: () {
                                  Get.to(() => RegisterPage());
                                  print('tekan');
                                },
                                borderRadius: BorderRadius.circular(30),
                                child: Padding(
                                  padding: const EdgeInsets.all(32),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                        fontSize: 19, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => SiginPage());
                                print('tekan');
                              },
                              child: const Text(
                                'Sign in',
                                style: TextStyle(fontSize: 19),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
