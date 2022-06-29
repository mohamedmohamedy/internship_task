// here is a public form field.

import 'package:flutter/material.dart';

class PublicTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool isObscure;
  final TextInputType inputType;
  final Function validation;
  final Widget? suffixIcon;

  const PublicTextFormField({
    Key? key,
    required this.controller,
    required this.inputType,
    required this.isObscure,
    required this.labelText,
    required this.validation,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        obscureText: false,
        keyboardType: TextInputType.emailAddress,
        validator: validation(),
      ),
    );
  }
}
