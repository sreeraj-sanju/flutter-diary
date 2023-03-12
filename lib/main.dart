// import 'package:connectivity_plus_widget/connectivity/connectivity_plus_service.dart';
// import 'package:flutter/material.dart';
// // ignore: unused_import
// import 'Login.dart';
// import 'Loading.dart';


// void main() {
//   // ignore: prefer_const_constructors
//   WidgetsFlutterBinding.ensureInitialized();
//   ConnectivityPlusService().initConnectivityService();
//   runApp(DailyMe());
// }

// class DailyMe extends StatelessWidget{
//   const DailyMe({super.key});

//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       title: 'Daily Me',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Loading(),
//     );
//   }
  
// }

import 'package:connectivity_plus_widget/connectivity/connectivity_plus_service.dart';
import 'package:flutter/material.dart';

import 'Loading.dart';
import 'InternetCheck.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ConnectivityPlusService().initConnectivityService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily ME',
      home: Loading(),
    );
  }
}

