/*
fetches and stores latest syllabus
 */
import 'package:flutter/material.dart';

class CourseStructure extends StatefulWidget {
  @override
  _CourseStructureState createState() => _CourseStructureState();
}

class _CourseStructureState extends State<CourseStructure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Course structure',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 80.0,
            delegate: SliverChildListDelegate([
              //TODO: un-comment later 27-01-2021
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Architecture.'), title: Text('BArch'),),
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Business Administration.'), title: Text('BBA'),),
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Computer Applications.'), title: Text('BCA'),),
              //TODO: remove BE as BE ceases to exist after 2017 batch
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Engineering.'), title: Text('BE'),),
              
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Hotel Management and Catering Technology.'), title: Text('BHMCT'),),
              // ListTile(onTap: () {}, subtitle: Text('Bachelor of Pharmacy.'), title: Text('BPharma'),),
              ListTile(onTap: () {
                Navigator.pushNamed(context, '/branchesBtech');
              }, subtitle: Text('Bachelor of Technology.'), title: Text('BTech'),),
              ListTile(subtitle: Center(child: Text('Select your degree.'))),
            ]),
          ),
        ],
      ),
    );
  }
}
