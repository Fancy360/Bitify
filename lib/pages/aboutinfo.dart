/*
about info page of the app
 */

import 'package:fll_pages/textdata/abouttextinfo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutinfo extends StatefulWidget {
  @override
  _AboutinfoState createState() => _AboutinfoState();
}

class _AboutinfoState extends State<Aboutinfo> {
  List<AboutTextInfo> inform = [
    AboutTextInfo(
        text:
            'The sole purpose of this app is to provide a guide of the BIT Mesra main campus and tools to the students residing/visiting.'),
    AboutTextInfo(
        text:
            'This app is NOT an official application.'),
    AboutTextInfo(
        text:
            'The information provided in this app may not be correct at all times and the developer should not be held accountable for this.'),
  ];

  Widget infoTemplate(abouttextinfo) {
    return Card(
      elevation: 20.0,
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              abouttextinfo.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 20.0,
            title: Text(
              'About',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                color: Colors.grey,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[900],
          ),
          backgroundColor: Colors.grey[900],
          body: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                //TODO: add last card with button url link
                children: [
                  Column(
                    // list of cards
                    children: inform
                        .map((abouttextinfo) => infoTemplate(abouttextinfo))
                        .toList(),
                  ),
                  Card(
                    elevation: 20.0,
                    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                    color: Colors.grey[900],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'For any feedbacks or corrections :-',
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          Tooltip(
                            message: 'opens Google form linked for this app',
                            child: OutlineButton.icon(
                                onPressed: () {
                                  launch("https://forms.gle/9sXy2e7pjj81KsrN9");
                                },
                                icon: Icon(
                                  Icons.mail_outlined,
                                  color: Colors.grey,
                                ),
                                label: Expanded(
                                  child: Text(
                                    'Write to us.',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                )),
                          ),
                          Tooltip(
                            message: 'opens Google doc file',
                            child: OutlineButton.icon(
                                onPressed: () {
                                  //TODO : update summary
                                  launch("https://docs.google.com/document/d/1SrRLvtq0kJiWr7gUk30IWpnLokjQGUQvdtA15zsBGnk/edit?usp=sharing");
                                },
                                icon: Icon(
                                  Icons.code_outlined,
                                  color: Colors.grey,
                                ),
                                label: Expanded(
                                  child: Text(
                                    'Summary of how this app was built.',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                )
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]),
          )),
    );
  }
}
