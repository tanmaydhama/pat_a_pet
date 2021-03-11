import 'package:flutter/material.dart';

class petCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  petCard({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 2.0, color: Colors.black),
        color: Colors.white,
      ),
      width: 500.0,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1.0)),
            child: Image(
              image: AssetImage(imageUrl),
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.black,
            ),
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.black,
              fontFamily: 'SourceSansPro',
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          ),
        ],
      ),
    );
  }
}
