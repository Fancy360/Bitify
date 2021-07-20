import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String str = "Initializing guide";

  void load() {
    //loading screen
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        str = "All set";
      });
    });

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home');
    });
  }

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[700],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinKitChasingDots(
                color: Colors.amberAccent,
                size: 50.0,
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                '$str',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 30.0,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
