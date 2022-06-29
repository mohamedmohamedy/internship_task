// Here is the screen where the user will sign in if he is authenticated.

import 'package:flutter/material.dart';

// Screens that i will navigate to..
import '../screens/sign_up_screen.dart';

// these are my helper reusable widgets.
import '../widgets/phone_form.dart';
import '../widgets/welcome_sentence.dart';
import '../widgets/buttons/public_button.dart';
import '../widgets/buttons/sign_in_by_google.dart';
import '../widgets/buttons/public_text_button.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign_in_screen';

  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //......................Image...............................
            Image.asset(
              'assets/images/sign_in.png',
              height: screenSize.height / 5,
            ),

            //..................Welcome text............................
            const WelcomeSentence(),

            //...........................Sign in and Help....................
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Sign in..
                  const Text(
                    'Sign in',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),

                  // Help Button..
                  Row(
                    children: [
                      PublicTextButton(function: () {}, text: 'Help'),
                      const Icon(Icons.help, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),

            //......................Phone Form Field.................

            const Padding(
              padding:
                  EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 15),
              child: PhoneForm(),
            ),

            //....................... Sign in Button.................
            PublicButton(
              backgroundColor: Colors.teal,
              function: () {},
              width: screenSize.width,
              text: 'Sign in',
              borderRadius: 5,
              height: 50,
            ),

            //.......................Or................................
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Or',
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
            ),

            //..................sign by Google....................

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SignInByGoogle(screenSize: screenSize),
            ),

            //........................Register Sentence.....................
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Doesn\'t have any account?'),
                PublicTextButton(
                  function: () => Navigator.of(context).pushNamed(SignUpScreen.routeName), 
                text: 'Register here',
                ),
              ],
            ),

            //................Policy rules.............................
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Use the application according to the policy rule. any kind of violations will be subjected to sanctions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

