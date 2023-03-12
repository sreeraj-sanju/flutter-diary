// import 'package:blog/constant.dart';
// import 'package:blog/models/api_response.dart';
// import 'package:flutter/material.dart';

// import '../services/user_service.dart';
// import 'home.dart';
import 'package:connectivity_plus_widget/connectivity/connectivity_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'Login.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // Navigator.of(context).pushAndRemoveUntil(
  //  MaterialPageRoute(builder: (context) => Login()), (route) => false);
  // function for check the user token available or not
  // Future<void> _loadUserInfo() async {
  //   int token = await getToken();
  //   // if (token == 0) {
  //   //   Navigator.of(context).pushAndRemoveUntil(
  //   //       MaterialPageRoute(builder: (context) => Login()), (route) => false);
  //   // }
  //    if (token != 0) {
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (context) => Home()), (route) => false);
  //   }else {
  //     ApiResponse response = await user_details();
  //     if (response.error == null) {
  //       Navigator.of(context).pushAndRemoveUntil(
  //           MaterialPageRoute(builder: (context) => Home()), (route) => false);
  //     } else if (response.error == serviceError) {
  //       Navigator.of(context).pushAndRemoveUntil(
  //           MaterialPageRoute(builder: (context) => Login()), (route) => false);
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         content: Text("$response.error"),
  //       ));
  //     }
  //   }
  // }

  @override
  void initState() {
    // _loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
        body: Column(children: [
          
      ConnectivityPlusWidget(
        backgroundColor: Colors.red,
        height: 40,
        marquee: false,
        notConnectedText: "No Connection.",
        textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        // height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 1),
                colors: <Color>[
              Color.fromARGB(255, 2, 63, 61),
              Color.fromRGBO(17, 54, 54, 1),
              // Color.fromRGBO(163, 227, 225, 1),
              Color.fromARGB(255, 6, 82, 80),
            ])),
        child: const Center(
            child: SpinKitCubeGrid(
          color: Color.fromARGB(255, 75, 75, 10),
          size: 100.0,
        )),
      ),
    ])));
  }
}
