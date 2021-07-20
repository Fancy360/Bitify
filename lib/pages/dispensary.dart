import 'package:flutter/material.dart';

class Dispensary extends StatefulWidget {
  @override
  _DispensaryState createState() => _DispensaryState();
}

class _DispensaryState extends State<Dispensary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent[200],
      body: Text('Dispensary'),
    );
  }
}
