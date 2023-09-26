import 'package:bank_sha/presentation/widgets/buttons.dart';
import 'package:bank_sha/presentation/widgets/profile_menu_item.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        appBar: AppBar(
          title: const Text("My Profile"),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 24.0,
              color: blackColor,
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 24),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: whiteColor),
                        child: Icon(
                          Icons.check_circle,
                          color: greenColor,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Shayna Hanna",
                    style: blackTextSyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_edit_profile.png",
                    title: "Edit Profile",
                    onTap: () async{
                      if (await Navigator.pushNamed(
                            context,
                            "/pin",
                          ) ==
                          true) {
                        Navigator.pushNamed(
                          context,
                          "/profile-edit",
                        );
                      }
                    },
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_pin.png",
                    title: "My PIN",
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/pin",
                      );
                    },
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_wallet.png",
                    title: "Wallet Settings",
                    onTap: () {},
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_my_reward.png",
                    title: "My Rewards",
                    onTap: () {},
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_help.png",
                    title: "Help Center",
                    onTap: () {},
                  ),
                  ProfileMenuItem(
                    iconUrl: "assets/ic_logout.png",
                    title: "Log Out",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 87.0,
            ),
            CustomTextWidgetButton(
              text: "Report Problem",
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ));
  }
}
