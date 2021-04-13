import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor = Colors.white;
  int value;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Indonesia"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    // Colors.red,
                    // Colors.redAccent,
                    // Colors.deepOrange,
                    // Colors.orange,
                    Colors.orangeAccent,
                    Colors.white,
                    // Colors.white
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Flexible(
                  //logo besar 1
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(3),
                    child: Image(
                      width: 400,
                      image: AssetImage("Assets/1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  //4 gambar kecil
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/2.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(),
                            child: Image(
                              image: AssetImage("Assets/4.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: 100,
                            height: 100,
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Image(
                              image: AssetImage("Assets/5.jpg"),
                              fit: BoxFit.cover,
                            ),
                          )),
                    ],
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                      child: Container(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            child: Text(
                          "INDONESIA",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.center,
                        )),
                        Container(
                          child: Text(
                            "COUNTRY",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              " Indonesia is the world's largest island country and the 14th-largest country by land area."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "Republic of Indonesia",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "With 1,904,569 square kilometres (735,358 square miles)."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "CITY",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "With more than 270 million people, Indonesia is the world's fourth-most populous country and the most populous Muslim-majority country."),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "Java is the world's most populous island",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "The sovereign state is a presidential, constitutional republic with an elected legislature. "),
                          margin: EdgeInsets.all(10),
                        ),
                        Container(
                          child: Text(
                            "PROVINCES",
                            style: TextStyle(fontSize: 15),
                          ),
                          margin: EdgeInsets.only(top: 15),
                        ),
                        Container(
                          child: Text(
                              "It has 34 provinces, of which five have special status."),
                          margin: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  )),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.all(3),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (favcolor == Colors.red) {
                      favcolor = Colors.white;
                    } else if (favcolor == Colors.white) {
                      favcolor = Colors.red;
                    }
                  });
                },
                child: Icon(Icons.favorite, color: favcolor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
