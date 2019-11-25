import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromRGBO(40, 96, 65, 7.0), Color(0xff191414)],
            begin: Alignment.topLeft,
            end: FractionalOffset(0.3, 0.3)),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 55.0, bottom: 5.0),
                  height: 100.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Recently Played',
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gotham"),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Container(
                  height: 165.0,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          SizedBox(
                            height: 160.0,
                            width: 170.0,
                            child: Image.asset(
                              'images/spotify$index.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Container(
                  height: 290,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Made for you",
                        style: TextStyle(
                          color: Colors.white.withOpacity(1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: "Gotham",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: Image.asset('images/spotify1.jpg',
                            fit: BoxFit.fitHeight),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50.0,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Recommendations',
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gotham"),
                      )
                    ],
                  ),
                ),
//                Padding(
//                  padding: EdgeInsets.all(10.0),
//                ),

                Container(
                  height: 165.0,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: <Widget>[
                          SizedBox(
                            height: 160.0,
                            width: MediaQuery.of(context).size.width / 2,
                            child: Image.asset(
                              'images/spotify$index.jpg',
                              fit: BoxFit.fitHeight,
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
