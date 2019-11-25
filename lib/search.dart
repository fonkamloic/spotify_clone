import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff666666),
            Color(0xfff191414),
          ],
          begin: Alignment.topLeft,
          end: FractionalOffset(0.2, 0.7),
        ),
      ),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(30.0),
                ),
                Container(
                  child: Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontFamily: 'Gotham',
                        fontSize: 50.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    height: 60.0,
                    width: MediaQuery.of(context).size.width / 1.2,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Artist, songs, or podcasts",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                            fontFamily: 'Gotham',
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Your top genres',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Gotham',
                          ),
                        ),
                        GridView.builder(
                          itemCount: 7,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          shrinkWrap: true,
                          controller: ScrollController(keepScrollOffset: false),
                          itemBuilder: (BuildContext context, int index) {
                            return GridTile(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  clipBehavior: Clip.antiAlias,
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset('images/spotify$index.jpg'),
                                      Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("Top HIp"))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
