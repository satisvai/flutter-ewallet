import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;
  const ProfileMenuItem({
    Key? key,
    required this.iconUrl,
    required this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            ImageIcon(
              AssetImage(
                iconUrl,
              ),
              size: 24.0,
            ),
            const SizedBox(
              width: 18.0,
            ),
            Text(
              title,
              style: blackTextSyle.copyWith(fontWeight: medium),
            ),
          ],
        ),
      ),
    );
  }
}
