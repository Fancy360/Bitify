import 'package:flutter/material.dart';

class Transport extends StatefulWidget {
  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Text('Transport'),
    );
  }
}
