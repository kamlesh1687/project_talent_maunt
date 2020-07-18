import 'package:flutter/material.dart';



class Profile5 extends StatelessWidget {
  static const routeName = '/Profile5';
  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width * 100;
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.transparent,
title: Text("Profile"),
        centerTitle: true,

actions: <Widget>[
  IconButton(color: Colors.white,
    icon: Icon(Icons.more_vert),
    onPressed: (){

    },
  ),

],
      ),
      
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

              //==========================================================================================
              // build Top Section of Profile (include : Image & main info & card of info[photos ... ] )
              //==========================================================================================
              _buildHeader(context, widthC),

              SizedBox(height: 10.0),

              //==========================================================================================
              //  build Bottom Section of Profile (include : email - phone number - about - location )
              //==========================================================================================
              _buildInfo(context, widthC),


            ],
          ),
        ));
  }

  Widget _buildHeader(BuildContext context, double width) {
    return Stack(
      children: <Widget>[
        Ink(
          height: 250,
          color: Colors.pink[300],
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                color: Colors.deepOrange,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: Colors.white,
                      width: 6.0,
                    ),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: CircleAvatar(

                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage('assets/spook.png'),
                      )),
                ),
              ),
              _buildMainInfo(context, width)
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.only(top: 210),
            child: _buildInfoCard(context)
        )
      ],
    );
  }

  Widget _buildInfoCard(context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Card(
            elevation: 5.0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 16.0, bottom: 16.0, right: 10.0, left: 10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      new Column(
                        children: <Widget>[
                          new Text(
                            'Followers',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: new Text(
                              '3.5k',
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0Xffde6262),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new Text(
                            'Following',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: new Text(
                              '150',
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0Xffde6262),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new Text(
                            'Up Vote',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: new Text(
                              '667k',
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0Xffde6262),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new Text(
                            'Down Vote',
                            style: new TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6.0),
                            child: new Text(
                              '3k',
                              style: new TextStyle(
                                  fontSize: 18.0,
                                  color: Color(0Xffde6262),
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMainInfo(BuildContext context, double width) {
    return Container(
      width: width,
      margin: const EdgeInsets.all(10),
      alignment: AlignmentDirectional.center,
      child: Column(
        children: <Widget>[
          Text('Arjun Kumar',style: TextStyle(fontSize: 20,color: Colors.teal,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text('24 Videos',style: TextStyle(color: Colors.grey.shade50,fontStyle: FontStyle.italic))
        ],
      ),
    );
  }

  Widget _buildInfo(BuildContext context, double width) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
          color: Colors.white,
          child: Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[


                    ListTile(
                      leading: Icon(Icons.person, color: Colors.deepOrangeAccent),
                      title: Text("About",style: TextStyle(fontSize: 18,color: Colors.black)),
                      subtitle: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",style: TextStyle(fontSize: 15,color: Colors.black54)),
                    ),

                  ],
                )
              ],
            ),
          ),
        ));
  }
}