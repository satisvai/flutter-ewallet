import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/buttons.dart';
import '../widgets/forms.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
              "Join Us to Unlock\nYour Growth",
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
              width: 327,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomFormField(
                    text: "Full Name",
                    textInputType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const CustomFormField(
                    text: "Email Address",
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const CustomFormField(text: "Password", obscureText: true),
                  const SizedBox(
                    height: 30.0,
                  ),
                  CustomFilledButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        "/sign-up-set-profile",
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            CustomTextWidgetButton(
              text: "Sign In",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/sign-in",
                );
              },
            )
          ],
        ));
  }
}
