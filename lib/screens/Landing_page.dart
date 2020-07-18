import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:talentmount/screens/Discovertab.dart';
import 'package:talentmount/screens/Home.dart';
import 'package:talentmount/screens/profile.dart';
import 'package:talentmount/widgets.dart';


class Landing_page extends StatefulWidget {
  @override
  _Landing_pageState createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {
  int currentIndex = 0;
  
  final bottomnavbaritemlist=[  Home(),

    Discover(),
    Container(color: Colors.red,),
    Container(color: Colors.purple,),
    Profile5()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(

          body: bottomnavbaritemlist.elementAt(currentIndex),
extendBody: true,
extendBodyBehindAppBar: true,
bottomNavigationBar:
BottomNavigationBar(
  backgroundColor: Colors.black,
  selectedItemColor: Colors.pink[300],
  unselectedItemColor: Colors.white,
  elevation: 0.5,
  onTap: (int index) {
    setState(
          () {
        currentIndex = index;
      },
    );
    // pageController.animateToPage(
    //   index,
    //   duration: Duration(
    //     milliseconds: 200,
    //   ),
    //   curve: Curves.easeIn,
    // );
  },
  currentIndex: currentIndex,
  type: BottomNavigationBarType.fixed,
  items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: SizedBox.shrink(),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: SizedBox.shrink(),
    ),
    BottomNavigationBarItem(
      icon: tikTokLog(),
      title: SizedBox.shrink(),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.indeterminate_check_box),
      title: SizedBox.shrink(),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      title: SizedBox.shrink(),
    ),
  ],
)

      ),
    );
  }
}





//TabBar(
//
//unselectedLabelColor: Colors.white,
//labelColor: Colors.pinkAccent,
//labelStyle: TextStyle(
//fontSize: 10,
//fontWeight:FontWeight.bold
//),
//indicator: BoxDecoration(),
//
//tabs: <Widget>[
//Tab(
//icon: ,
//text: "Home",
//),
//Tab(
//icon: Icon(Icons.search),
//text: "Discover",
//),
//Tab(
//icon: tikTokLog(),
//
//),
//Tab(
//icon: Icon(Icons.indeterminate_check_box),
//text: "Inbox",
//),
//Tab(
//icon: Icon(Icons.account_circle),
//text: "Me",
//)
//
//],),