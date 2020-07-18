import 'package:flutter/material.dart';





Widget tikTokLog() {
  return Container(
    width: 45.0,
    height: 27.0,
    child: Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10.0),
          width: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.pink[300],
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          width: 30.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.blue[200],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          width: 30.0,
          height: double.infinity,
          child: Icon(Icons.add, color: Colors.black),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}


