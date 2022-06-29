import 'package:flutter/material.dart';

// app screens:-
import './screens/home_screen.dart';
import './screens/sign_in_screen.dart';
import './screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.teal,
        colorScheme: const ColorScheme.light(
          primary: Colors.teal,
        ),
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SignInScreen.routeName: (context) => const SignInScreen(),
        SignUpScreen.routeName:(context) => const SignUpScreen(),
      },
    );
  }
}
