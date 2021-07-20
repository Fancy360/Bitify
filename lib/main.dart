import 'package:fll_pages/pages/aboutinfo.dart';
import 'package:fll_pages/pages/academics.dart';
import 'package:fll_pages/pages/academics_pages/branchesBtech/branches_btech.dart';
import 'package:fll_pages/pages/academics_pages/branchesBtech/cse_btech.dart';
import 'package:fll_pages/pages/academics_pages/branchesBtech/subjects/mathematicsMA107.dart';
import 'package:fll_pages/pages/academics_pages/courseStructure.dart';
import 'package:fll_pages/pages/cLubs.dart';
import 'package:fll_pages/pages/choose_location.dart';
import 'package:fll_pages/pages/dispensary.dart';
import 'package:fll_pages/pages/home.dart';
import 'package:fll_pages/pages/loading.dart';
import 'package:fll_pages/pages/stores.dart';
import 'package:fll_pages/pages/transport.dart';
import 'package:fll_pages/pages/website.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  // initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home' : (context) => Home(),
    '/location' : (context) => ChooseLocation(),
    '/academics' : (context) => Academics(),
    '/clubs' : (context) => Clubs(),
    '/dispensary' : (context) => Dispensary(),
    '/stores' : (context) => Stores(),
    '/transport' : (context) => Transport(),
    '/website' : (context) => Website(),
    '/aboutinfo' : (context) => Aboutinfo(),

    //academics_Pages
    '/courseStructure' : (context) => CourseStructure(),

    //btech_pages
    '/branchesBtech' : (context) => Branches_Btech(),

    '/cse_btech' : (context) => CseBtech(),

    //course codes and syllabus
    '/mathematicsMA107' : (context) => MA107(),
  },
));
