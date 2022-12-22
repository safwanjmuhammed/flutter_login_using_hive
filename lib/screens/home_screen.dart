import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
          const RiveAnimation.asset(
            "assets/rive/flying_car.riv",
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Column(
              children: [
                BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 4),
                    child: Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(.3),
                          border: Border.all(
                              color: Colors.transparent.withOpacity(.1),
                              width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Welcome $email"),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
