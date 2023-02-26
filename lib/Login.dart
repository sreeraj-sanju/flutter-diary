import 'dart:ui';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  get blurRadius => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/img.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 16,
                color: Colors.black12.withOpacity(.5),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: Container(
                  width: 300,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1.5, color: Colors.white30.withOpacity(.2))),
                          child: Center(child: const Text('data')),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
