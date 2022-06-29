// Here is the welcome sentence..

import 'package:flutter/material.dart';

class WelcomeSentence extends StatelessWidget {
  const WelcomeSentence({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Text(
        'Welcome to your delivery services',
        style: TextStyle(
          color: Colors.grey[600],
          fontFamily: 'UnicaOne',
        ),
      ),
    );
  }
}
