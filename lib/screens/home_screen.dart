// this is our first screen to the project (Home Screen).

import 'package:flutter/material.dart';

// Here I import my other screens for navigation:
import './sign_in_screen.dart';
import './sign_up_screen.dart';

// Here I import my helper widgets.
import '../widgets/buttons/public_button.dart';
import '../widgets/headline.dart';
import '../widgets/changing_container.dart';

class HomeScreen extends StatelessWidget {
  // home screen route name.
  static const routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

//....................................................................................................
  @override
  Widget build(BuildContext context) {
    // to get different screen sizes automatically.
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //................... Skip button..................................................
            Padding(
              padding: EdgeInsets.only(left: screenSize.width / 1.4, top: 5),
              child: PublicButton(
                backgroundColor: const Color.fromRGBO(249, 243, 233, 1),
                function: () {},
                width: 50,
                text: 'Skip',
                borderRadius: 25,
                height: 40,
                textColor: Colors.black,
              ),
            ),
            //.............................Headline.......................................
            const HeadLine(),
            //.............................Middle Container............................
           
           // Here I use a custom Periodic Changing widget to control the changing elements in the screen.
            const ChangingContainer(),
            //.................................... Bottom Button.....................................
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: PublicButton(
                backgroundColor: Colors.teal,
                function: ()  {Navigator.of(context).pushNamed(SignInScreen.routeName);},
                width: screenSize.width,
                text: 'Get started',
                borderRadius: 15,
                height: 50,
              ),
            ),
            //..............................Signing Sentence.........................................
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
