// this is the Sign up screen.

import 'package:flutter/material.dart';

// Here is the screen I would navigate to
import '../screens/sign_in_screen.dart';

// Here I will import my helper widgets
import '../widgets/welcome_sentence.dart';
import '../widgets/public_text_form_field.dart';
import '../widgets/phone_form.dart';
import '../widgets/buttons/public_text_button.dart';
import '../widgets/buttons/public_button.dart';
import '../widgets/buttons/sign_in_by_google.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = '/sign_up_screen';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final GlobalKey<FormState> formKey = GlobalKey();

    return Scaffold(
      body: Stack(
        children: [
          //..........Background image.....................
          SizedBox(height: screenSize.height, width: screenSize.width),
          Image.asset('assets/images/background.jpg'),

          //.......... Navigate back button..........
          Positioned(
            top: screenSize.height / 20,
            left: screenSize.width / 11,
            child: Container(
              height: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(28, 34, 66, 1),
              ),
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),

          //.................... Container for the rest of the screen...............
          Positioned(
            top: 78,
            child: Container(
              color: Colors.white,
              width: screenSize.width,
              height: screenSize.height - 100,
              child: Column(
                children: [
                  const WelcomeSentence(),

                  //.................... Register Sentence......
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Sign in..
                        const Text(
                          'Register',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w500),
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

                  //...................Form ..............................

                  SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //..............Email......................
                          PublicTextFormField(
                            controller: emailController,
                            inputType: TextInputType.emailAddress,
                            isObscure: false,
                            labelText: 'E-mail',
                            validation: () {},
                          ),

                          //........................Phone number................
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 20),
                            child: PhoneForm(),
                          ),

                          //.......................Password.........................

                          PublicTextFormField(
                            controller: passwordController,
                            inputType: TextInputType.visiblePassword,
                            isObscure: false,
                            labelText: 'Password',
                            validation: () {},
                            suffixIcon:
                                const Icon(Icons.remove_red_eye_rounded),
                          ),

                          //....................Register button.............
                          PublicButton(
                            backgroundColor: Colors.teal,
                            function: () {},
                            width: screenSize.width,
                            text: 'Register',
                            borderRadius: 5,
                            height: 50,
                          ),

                          //.............or..............
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Text(
                              'OR',
                              style: TextStyle(color: Colors.grey[600]),
                            ),
                          ),

                          //.................... Google registration..............
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: SignInByGoogle(screenSize: screenSize),
                          ),

                          //............... Sign in instead...................
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('Has an account?'),
                              PublicTextButton(
                                function: () => Navigator.of(context)
                                    .pushNamed(SignInScreen.routeName),
                                text: 'Sign in here',
                              ),
                            ],
                          ),

                          //...................... Agree on terms..............
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                  ),
                                  children: const [
                                    TextSpan(
                                        text:
                                            'By registering your account, you are agree to our '),
                                    TextSpan(
                                        text: 'Terms and condition',
                                        style: TextStyle(color: Colors.blue)),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
