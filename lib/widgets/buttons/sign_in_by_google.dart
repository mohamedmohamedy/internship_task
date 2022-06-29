// Here is the "Sign in by Google Button"

import 'package:flutter/material.dart';

class SignInByGoogle extends StatelessWidget {
  const SignInByGoogle({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        side: const BorderSide(color: Colors.grey),
        fixedSize: Size(screenSize.width, 50),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/google.png',
            width: 20,
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              'Sign in by Google',
              style: TextStyle(color: Colors.teal),
            ),
          )
        ],
      ),
    );
  }
}
