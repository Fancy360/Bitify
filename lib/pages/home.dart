import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String info = '';
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homeback.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.fromLTRB(20.0, 70.0, 0.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bitfly',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'A minimalistic app for all things BIT.',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  // gradient: ,
                ),
              ),
              ListTile(
                leading: Text('ACADEMICS'),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.check_sharp),
                  ),
                  TextSpan(
                    text: ' Attendance',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.calculate_sharp),
                  ),
                  TextSpan(
                    text: ' Cgpa calculator',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.book_sharp),
                  ),
                  TextSpan(
                    text: ' Course structure',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.menu_book_sharp),
                  ),
                  TextSpan(
                    text: ' ERP',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.person_search_sharp),
                  ),
                  TextSpan(
                    text: ' Faculty',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.calendar_today_sharp),
                  ),
                  TextSpan(
                    text: ' Holidays',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.library_books_sharp),
                  ),
                  TextSpan(
                    text: ' Library',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.emoji_events_sharp),
                  ),
                  TextSpan(
                    text: ' Placements',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              Divider(),
              ListTile(
                leading: Text('CLUBS & EVENTS'),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.emoji_symbols_sharp),
                  ),
                  TextSpan(
                    text: ' Clubs',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              ListTile(
                leading: RichText(
                    text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(Icons.calendar_today_sharp),
                  ),
                  TextSpan(
                    text: ' Events',
                    style: TextStyle(
                      color: Colors.grey[900],
                    ),
                  ),
                ])),
              ),
              Divider(),
              Tooltip(
                message: 'Opens "Dispensary & Ambulance" page within the application.',
                child: ListTile(
                  leading: Text('DISPENSARY & AMBULANCE'),
                ),
              ),
              Divider(),
              Tooltip(
                message: 'Opens "Stores & Canteens" page within the application.',
                child: ListTile(
                  leading: Text('STORES & CANTEENS'),
                ),
              ),
              Divider(),
              Tooltip(
                message: 'Opens "Transport" page within the application.',
                child: ListTile(
                  leading: Text('TRANSPORT'),
                ),
              ),
              Divider(),
              Tooltip(
                message: 'Opens "BIT Mesra website" on device browser.',
                child: ListTile(
                  leading: Text('WEBSITE'),
                  onTap: () {
                    launch("https://www.bitmesra.ac.in/");
                  },
                ),
              ),
              Divider(),
              Tooltip(
                message: 'Opens "About" page of the application.',
                child: ListTile(
                  leading: Text('ABOUT'),
                  onTap: () {
                    Navigator.pushNamed(context, '/aboutinfo');
                  },
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent.withOpacity(0.7),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text('"Learning is that which Liberates."',style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.amberAccent,
              ),),
            ),
            SizedBox(height: 80.0,),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/academics');
              },
              icon: Icon(
                Icons.book_outlined,
                color: Colors.amberAccent,
              ),
              label: Text(
                'Academics',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/clubs');
              },
              icon: Icon(
                Icons.web_asset_outlined,
                color: Colors.lightGreenAccent,
              ),
              label: Text(
                'Clubs & Events',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/dispensary');
              },
              icon: Icon(
                Icons.local_hospital_outlined,
                color: Colors.redAccent,
              ),
              label: Text(
                'Dispensary & Ambulance',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/stores');
              },
              icon: Icon(
                Icons.store_outlined,
                color: Colors.deepOrangeAccent,
              ),
              label: Text(
                'Stores & Canteens',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/transport');
              },
              icon: Icon(
                Icons.airport_shuttle_outlined,
                color: Colors.lightBlueAccent,
              ),
              label: Text(
                'Transport',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/website');
              },
              icon: Icon(
                Icons.account_balance_outlined,
                color: Colors.indigoAccent,
              ),
              label: Text(
                'Website',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              color: Colors.grey[900],
            ),
          ],
        ),
        floatingActionButton: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/aboutinfo');
          },
          tooltip: 'About application',
          icon: Icon(
            Icons.info,
            color: Colors.white,
            size: 35.0,
          ),
          color: Colors.white,
        ),
      ),
    ]);
  }
}
