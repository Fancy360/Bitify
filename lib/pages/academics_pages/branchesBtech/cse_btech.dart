import 'package:fll_pages/textdata/abouttextinfo.dart';
import 'package:flutter/material.dart';

class CseBtech extends StatefulWidget {
  @override
  _CseBtechState createState() => _CseBtechState();
}

class _CseBtechState extends State<CseBtech> {
  int _selectedItem = 0;
  var _pageController = PageController(initialPage: 0);

// List<AboutTextInfo> syllabus = [
//   AboutTextInfo(text:'Mathematics I',text2: 'MA103',text3: '4'),
//   AboutTextInfo(text:'Mathematics II',text2: 'Ma103',text3: '4'),
// ];
//
// Widget subjectTemplate(abouttextinfo){
//   return ListTile(
//     title: Text(abouttextinfo.text),
//     subtitle: Text(abouttextinfo.text2),
//     trailing: Text('credits: '+abouttextinfo.text3),
//     // leading: Text('hello/'),
//   );
// }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
          });
        },
        //TODO: generate semester page via list
        //TODO: generate syllabus via list
        children: [
          CustomScrollView(slivers: [
            SliverAppBar(
              expandedHeight: 150.0,
              backgroundColor: Colors.blueGrey,
              flexibleSpace: FlexibleSpaceBar(
                title:
                Text(
                  'CSE\nBtech sem: 1\ntotal credits: 21',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 70.0,
              delegate: SliverChildListDelegate([
                ListTile(title: Text('Mathematics - I'),subtitle: Text('MA107'),trailing: Text('Credits : 4'),onTap: (){Navigator.pushNamed(context, '/mathematicsMA107');},),
                ListTile(title: Text('Chemistry'),subtitle: Text('CH101'),trailing: Text('Credits : 4'),),
                ListTile(title: Text('Basics of Electronics & Communication Engineering'),subtitle: Text('EC101'),trailing: Text('Credits : 4'),),
                ListTile(title: Text('Basics of Mechanical Engineering'),subtitle: Text('ME101'),trailing: Text('Credits : 4'),),
                Divider(),
                ListTile(title: Text('Chemistry Lab'),subtitle: Text('CH102'),trailing: Text('Credits : 1.5'),),
                ListTile(title: Text('Electronics & Communication Lab'),subtitle: Text('EC102'),trailing: Text('Credits : 1.5'),),
                ListTile(title: Text('Engineering Graphics'),subtitle: Text('ME102'),trailing: Text('Credits : 2'),),
              ]),
            ),
          ]),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 2',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 3',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 4',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 5',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 6',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 7',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.blueGrey,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    'CSE\nBtech sem: 8',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedFontSize: 25.0,
        selectedItemColor: Colors.indigo,
        selectedIconTheme: IconThemeData(opacity: 1,size: 15.0),
        unselectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(opacity: 0),
        currentIndex: _selectedItem,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: Duration(milliseconds: 450), curve: Curves.linear);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '2'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '3'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '4'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '5'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '6'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '7'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_sharp), label: '8'),
        ],
      ),
    );
  }
}
