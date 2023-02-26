import 'package:flutter/material.dart';
import 'Login.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(DailyMe());
}

class DailyMe extends StatelessWidget{
  const DailyMe({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Daily Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
