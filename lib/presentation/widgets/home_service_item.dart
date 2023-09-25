import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class HomeServiceItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const HomeServiceItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
            color: whiteColor,
          ),
          child: Center(
            child: Image.asset(
              iconUrl,
              width: 26.0,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          title,
          style: blackTextSyle.copyWith(fontWeight: medium),
        ),
      ],
    );
  }
}
