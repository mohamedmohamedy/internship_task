import 'package:flutter/material.dart';

class PublicTextButton extends StatelessWidget {
  final VoidCallback function;
  final String text;

  const PublicTextButton({
    required this.function,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.blue,
      ),
      onPressed: function,
      child: Text(text),
    );
  }
}
