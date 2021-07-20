import 'package:flutter/material.dart';

class Branches_Btech extends StatefulWidget {
  @override
  _Branches_BtechState createState() => _Branches_BtechState();
}

class _Branches_BtechState extends State<Branches_Btech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Bachelor of Technology\nB.Tech',
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 70.0,
            delegate: SliverChildListDelegate([
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Biotechnology'),
              //   title: Text('Bio-tech'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Civil Engineering'),
              //   title: Text('CE'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Chemical Engineering'),
              //   title: Text('Chem-Eng'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Chemical Engineering - Plastics and Polymer'),
              //   title: Text('Chem-Eng Plastics and Polymer'),
              // ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/cse_btech');
                },
                subtitle: Text('Computer Science and Engineering'),
                title: Text('CSE'),
              ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Electrical and Electronics Engineering'),
              //   title: Text('EEE'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Electronics and Communication Engineering'),
              //   title: Text('ECE'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Mechanical Engineering'),
              //   title: Text('ME'),
              // ),
              // ListTile(
              //   onTap: () {},
              //   subtitle: Text('Information Technology'),
              //   title: Text('IT'),
              // ),
              //hint
              ListTile(
                  subtitle: Center(child: Text('Select your branch.'))),
            ]),
          )
        ],
      ),
    );
  }
}
