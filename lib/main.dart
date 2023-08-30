import 'package:bank_sha/presentation/pages/home_page.dart';
import 'package:bank_sha/presentation/pages/onboarding_page.dart';
import 'package:bank_sha/presentation/pages/sign_in_page.dart';
import 'package:bank_sha/presentation/pages/sign_up_page.dart';
import 'package:bank_sha/presentation/pages/sign_up_set_ktp.dart';
import 'package:bank_sha/presentation/pages/sign_up_set_profile_page.dart';
import 'package:bank_sha/presentation/pages/sign_up_success_page.dart';
import 'package:bank_sha/presentation/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
        '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
        '/sign-up-success': (context) => const SignUpSuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}