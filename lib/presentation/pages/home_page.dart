// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:bank_sha/presentation/widgets/home_latest_transaction_item.dart';
import 'package:bank_sha/presentation/widgets/home_service_item.dart';
import 'package:bank_sha/presentation/widgets/home_tips_item.dart';
import 'package:bank_sha/presentation/widgets/home_user_item.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(context),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransaction(),
          buildSendAgain(),
          buildFriendlyTips(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          "assets/ic_plus_circle.png",
          width: 24.0,
        ),
        backgroundColor: purpleColor,
        onPressed: () {
          //
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: whiteColor,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTextSyle.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/ic_overview.png",
                    width: 20,
                    color: blueColor,
                  ),
                  label: "Overview"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/ic_history.png",
                    width: 20,
                  ),
                  label: "History"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/ic_statistic.png",
                    width: 20,
                  ),
                  label: "Statistic"),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/ic_reward.png",
                    width: 20,
                  ),
                  label: "Reward"),
            ]),
      ),
    );
  }

  Widget buildProfile(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Howdy",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                "shaynahan",
                style:
                    blackTextSyle.copyWith(fontSize: 20, fontWeight: semiBold),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
              context,
              "/profile",
              );
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/img_profile.png'),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14.0,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      width: double.infinity,
      height: 220,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(28.0),
        ),
        image: DecorationImage(
          image: AssetImage('assets/img_bg_card.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Shayna Hanna",
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 28.0,
          ),
          Text(
            "**** **** **** 1280",
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 4),
          ),
          const SizedBox(
            height: 21.0,
          ),
          Text(
            "Balance",
            style: whiteTextStyle,
          ),
          Text(
            "Rp 12.500",
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          ),
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20.0),
          ),
          color: whiteColor),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Level 1",
                style: blackTextSyle.copyWith(fontWeight: medium),
              ),
              const Spacer(),
              Text(
                "55%",
                style: greenTextStyle.copyWith(fontWeight: semiBold),
              ),
              Text(
                " of Rp 20.000",
                style: blackTextSyle.copyWith(fontWeight: semiBold),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(55.0),
            ),
            child: LinearProgressIndicator(
              value: 0.55,
              valueColor: AlwaysStoppedAnimation(greenColor),
              minHeight: 5,
              backgroundColor: lightBackgroundColor,
            ),
          )
        ],
      ),
    );
  }

  Widget buildServices() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Do Something",
            style: blackTextSyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItem(
                iconUrl: "assets/ic_topup.png",
                title: "Top Up",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic_send.png",
                title: "Send",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic_withdraw.png",
                title: "Withdraw",
                onTap: () {},
              ),
              HomeServiceItem(
                iconUrl: "assets/ic_more.png",
                title: "More",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildLatestTransaction() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Latest Transaction",
            style: blackTextSyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            margin: const EdgeInsets.only(top: 14),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: whiteColor),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeLatestTransactionItem(
                    iconUrl: "assets/ic_transaction_cat1.png",
                    title: "Top Up",
                    time: "Yesterday",
                    value: "+ 450.000"),
                HomeLatestTransactionItem(
                    iconUrl: "assets/ic_transaction_cat2.png",
                    title: "Cashback",
                    time: "Sep 11",
                    value: "+ 22.000"),
                HomeLatestTransactionItem(
                    iconUrl: "assets/ic_transaction_cat3.png",
                    title: "Withdraw",
                    time: "Sep 2",
                    value: "- 5.000"),
                HomeLatestTransactionItem(
                    iconUrl: "assets/ic_transaction_cat4.png",
                    title: "Transfer",
                    time: "Aug 27",
                    value: "- 123.500"),
                HomeLatestTransactionItem(
                    iconUrl: "assets/ic_transaction_cat5.png",
                    title: "Electric",
                    time: "Feb 18",
                    value: "- 12.300.000"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Send Again",
            style: blackTextSyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItem(
                  imageUrl: "assets/img_friend1.png",
                  username: "yuanita",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend2.png",
                  username: "jani",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend3.png",
                  username: "urip",
                ),
                HomeUserItem(
                  imageUrl: "assets/img_friend4.png",
                  username: "masa",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Tips",
            style: blackTextSyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14.0,
          ),

          GridView.builder(
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0 / 1.2,
          crossAxisCount: 2,
          mainAxisSpacing: 17,
          crossAxisSpacing: 18,
          ),
          itemCount: 4,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
          return HomeTipsItem(
                imageUrl: "assets/img_tips1.png",
                title: "Best tips for using a credit card aaaaaaaaaaaaaa",
                url: Uri.parse("https://www.pub.dev"),
              );
              //maximal 43 character
          },
          ),

          // const Wrap(
          //   spacing: 2,
          //   runSpacing: 18,
          //   children: [
          //     HomeTipsItem(
          //       imageUrl: "assets/img_tips1.png",
          //       title: "Best tips for using\na credit card",
          //       url: "https://www.google.com",
          //     ),
          //      HomeTipsItem(
          //       imageUrl: "assets/img_tips1.png",
          //       title: "Best tips for using\na credit card",
          //       url: "https://www.google.com",
          //     ),
          //                   HomeTipsItem(
          //       imageUrl: "assets/img_tips1.png",
          //       title: "Best tips for using\na credit card",
          //       url: "https://www.google.com",
          //     ),
          //      HomeTipsItem(
          //       imageUrl: "assets/img_tips1.png",
          //       title: "Best tips for using\na credit card",
          //       url: "https://www.google.com",
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
