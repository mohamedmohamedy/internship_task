// Here I made a periodic changing widget that change every 3 seconds.

import 'dart:async';

import 'package:flutter/material.dart';

import './middle_container.dart';

class ChangingContainer extends StatefulWidget {
  const ChangingContainer({Key? key}) : super(key: key);

  @override
  State<ChangingContainer> createState() => _ChangingContainerState();
}

class _ChangingContainerState extends State<ChangingContainer> {
  // Here i will setup an timer to change the Middle counter every 3 seconds.
  bool _firstContainer = true;
  bool _secondContainer = false;
  bool _thirdContainer = false;
  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) {
        // change the first container to the second.
        if (_firstContainer == true &&
            _secondContainer == false &&
            _thirdContainer == false) {
          setState(
            () {
              _firstContainer = false;
              _secondContainer = true;
              _thirdContainer = false;
            },
          );

          // change the second to the third.
        } else if (_firstContainer == false &&
            _secondContainer == true &&
            _thirdContainer == false) {
          setState(
            () {
              _firstContainer = false;
              _secondContainer = false;
              _thirdContainer = true;
            },
          );

          // change the third to the first again, and so on..
        } else if (_firstContainer == false &&
            _secondContainer == false &&
            _thirdContainer == true) {
          setState(
            () {
              _firstContainer = true;
              _secondContainer = false;
              _thirdContainer = false;
            },
          );
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Our first Middle container will be in the initial and will change after 3 seconds and come back again in another 3.
        if (_firstContainer)
          MiddleContainer(
            screenSize: screenSize,
            imageAsset: 'assets/images/take-away.png',
            firstText: 'Get food delivery to your doorstep asap',
            secondText:
                'We have young and professional delivery team that will bring your food as soon as possible to your doorstep ',
          ),

        // Our second container that will appear after 3 second from opening the app and will change after another 3 seconds
        if (_secondContainer)
          MiddleContainer(
            screenSize: screenSize,
            imageAsset: 'assets/images/delivery-bro.png',
            firstText: 'Buy any food from your favorite restaurant',
            secondText:
                'We are constantly adding your favorite throughout the territory and around your area carefully selected',
          ),

        // Our third Container will appear after the second container by 3 seconds.
        if (_thirdContainer)
          MiddleContainer(
            screenSize: screenSize,
            imageAsset: 'assets/images/delivery.png',
            firstText: 'Keep track of your order until it reach you',
            secondText:
                'We provide our customers a live location checker so they can watch there order\'s route until it reach them peacefully',
          ),

        //...............................Small Icons.............................................
        Positioned(
          bottom: 0,
          left: screenSize.width * .33,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Although here the color of the Icons change periodically with it's Middle container.
              Icon(
                Icons.minimize,
                size: 40,
                color: _firstContainer ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.minimize,
                size: 40,
                color: _secondContainer ? Colors.yellow : Colors.grey,
              ),
              Icon(
                Icons.minimize,
                size: 40,
                color: _thirdContainer ? Colors.yellow : Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
