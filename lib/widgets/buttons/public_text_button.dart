import 'package:flutter/material.dart';

class PublicTextButton extends StatelessWidget {
  final VoidCallback function;
  final String text;
  final double? fontSize;

  const PublicTextButton({
    required this.function,
    required this.text,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.blue,
      ),
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize),
      ),
    );
  }
}
