import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';



class Discover extends StatefulWidget {
  static const routeName = '/NoConnection';
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {


  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:IconThemeData(color: Colors.white),
        backgroundColor: Colors.pinkAccent,

        title: Text(
            'Discover',
            style: TextStyle(fontSize:24,color: Colors.white)
        ),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.all(5.0),
            onPressed: (){},
            icon: Icon(Icons.search,color: Colors.white),
          ),
          IconButton(
            padding: EdgeInsets.all(5.0),
            onPressed: (){},
            icon: Icon(Icons.more_vert,color: Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: InkWell(
          highlightColor: Colors.purpleAccent,
          splashColor: Colors.purple,
          hoverColor: Colors.deepPurpleAccent,
          onTap: (){
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-150,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  AntDesign.disconnect,color: Colors.black,
                  size: 100,
                ),
                Text('No connection',style: TextStyle(fontSize: 28,color: Colors.black)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(MaterialIcons.refresh),
                    Text('Tap to retry',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.center,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}