// Here I created the Middle Container that has the image and the description under it.

import 'package:flutter/material.dart';

class MiddleContainer extends StatelessWidget {
  final Size screenSize;
  final String imageAsset;
  final String firstText;
  final String secondText;

  const MiddleContainer({
    Key? key,
    required this.screenSize,
    required this.imageAsset,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      height: screenSize.height * .6,
      child: Column(
        children: [
          //....................Image...................................
          Image.asset(
            imageAsset,
            height: 250,
            fit: BoxFit.cover,
          ),
          //.......................First Text...........................
          // ignore: prefer_const_constructors
          Text(
            textAlign: TextAlign.center,
            firstText,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          //..........................Second Text............................
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              textAlign: TextAlign.center,
              secondText,
              style: TextStyle(fontSize: 13, color: Colors.grey[500]),
            ),
          ),
        ],
      ),
    );
  }
}
