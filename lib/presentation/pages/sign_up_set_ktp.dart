import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 100,
                bottom: 100,
              ),
              height: 50,
              width: 155,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img_logo_light.png"))),
            ),
            Text(
              "Verify Your\nAccount",
              style: blackTextSyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.all(22),
              //height: 390,
              width: 327,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: lightBackgroundColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/ic_upload.png",
                        width: 32,
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 120,
                  //   width: 120,
                  //   decoration: const BoxDecoration(
                  //       shape: BoxShape.circle,
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/img_profile.png"))),
                  // ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Passport/ID Card",
                    style: blackTextSyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),

                  CustomFilledButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/sign-up-success",
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
