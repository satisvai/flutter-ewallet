import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String text;
  final bool obscureText;
  final TextEditingController? controller;
  final TextInputType? textInputType;

  const CustomFormField({
    super.key,
    required this.text,
    this.obscureText = false,
    this.controller,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: blackTextSyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              contentPadding: const EdgeInsets.all(12)),
        ),
      ],
    );
  }
}
