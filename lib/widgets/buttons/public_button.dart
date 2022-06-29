// Here is the public button  we can reuse through the app.

import 'package:flutter/material.dart';

class PublicButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback function;
  final double width;
  final double height;
  final double borderRadius;
  final String text;

  const PublicButton({
    Key? key,
    required this.backgroundColor,
    required this.function,
    required this.width,
    required this.text,
    required this.borderRadius,
    required this.height,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          elevation: 5,
          fixedSize: Size(width, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
