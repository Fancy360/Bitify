/*
Clubs and Event page
 */

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Clubs extends StatefulWidget {
  @override
  _ClubsState createState() => _ClubsState();
}

class _ClubsState extends State<Clubs> {
  List<String> techClubs = List();
  List<String> culClubs = List();

//   void _getDataFromWeb() async {
// final response = await .get
//   }TODO: get list

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          // Clubs

          Expanded(
            child: Card(
              color: Colors.red,
              child: Column(
                children: [
                  Text('ONEPLUS'),
                  CustomScrollView(
                    slivers: [
                      SliverList(delegate: SliverChildListDelegate([

                      ]))
                    ],
                  )
                ],
              ),
            ),
          ),

          // Events
          Expanded(
            child: Card(
              color: Colors.red,
              child: Text('TWOPLUS'),
            ),
          )
        ]),
      ),
    );
  }
}
