// Here I put the headline in a separate widget to make the code look more linear.

import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: 'UnicaOne',
            color: Colors.teal[300],
          ),
          children: const [
            TextSpan(text: '7', style: TextStyle(color: Colors.yellow)),
            TextSpan(text: 'Krave')
          ]),
    );
  }
}
