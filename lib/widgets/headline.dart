// Here I put the headline in a separate widget to make the code look more linear.

import 'package:flutter/material.dart';

class HeadLine extends StatelessWidget {
  const HeadLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text(
          '7',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: 'UnicaOne',
            color: Colors.yellow,
          ),
        ),
        Text(
          'Krave',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontFamily: 'UnicaOne',
            color: Colors.teal[300],
          ),
        ),
      ],
    );
  }
}