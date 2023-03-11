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
                image: AssetImage("assets/images/bg.jpg"), fit: BoxFit.cover)),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 24,
                spreadRadius: 10,
                color: Color.fromARGB(31, 250, 249, 249).withOpacity(.1),
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  width: 250,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1.5, color: Colors.white.withOpacity(.2))),
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
