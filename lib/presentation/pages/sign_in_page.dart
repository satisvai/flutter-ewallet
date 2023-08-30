import 'package:bank_sha/presentation/widgets/buttons.dart';
import 'package:bank_sha/presentation/widgets/forms.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
              "Sign In &\nGrow Your Finance",
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
                  const CustomFormField(text: "Email Adress"),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const CustomFormField(text: "Password", obscureText: true),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot Password",
                        style: blueTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  CustomFilledButton(
                    title: "Sign In",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            CustomTextWidgetButton(
              text: "Create New Account",
              onTap: () {
                Navigator.pushNamed(
                  context,
                  "/sign-up",
                );
              },
            )
          ],
        ));
  }
}
