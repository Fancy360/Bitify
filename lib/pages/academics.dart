/*
Academics page
contains :
  attendance manager,  CGPA calculator,  course Structure,  ERP,  faculty,  holidays, library, placements
 */
import 'package:flutter/material.dart';

class Academics extends StatefulWidget {
  @override
  _AcademicsState createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Academics',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber),
                ),
              ),
              floating: true,
              pinned: true,
              expandedHeight: 50,
              backgroundColor: Colors.grey[900],
            ),
            SliverFixedExtentList(
                itemExtent: 80.0,
                delegate: SliverChildListDelegate([
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Attendance manager',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calculate_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'CGPA calculator',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/courseStructure');
                      },
                      icon: Icon(
                        Icons.book_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Course structure',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu_book_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'ERP',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_search_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Faculty',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_today_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Holidays',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.library_books_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Library',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                  OutlineButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.emoji_events_sharp,
                        color: Colors.grey,
                        size: 30.0,
                      ),
                      label: Text(
                        'Placements',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      )),
                ]))
          ],
        ),
      ),
    );
  }
}
