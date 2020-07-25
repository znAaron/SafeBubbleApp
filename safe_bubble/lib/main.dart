import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safe Bubble',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: new Column(
            children: [
              Container(
                  child:TrackHeader()
              ),
              Container(
                  child:Text("place holder3")
              ),

            ]
        )
    );
  }
}

class TrackHeader extends StatefulWidget {
  @override
  _TrackHeaderState createState() => _TrackHeaderState();
}

class _TrackHeaderState extends State<TrackHeader> {
  bool contacted;
  bool enableTracing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.vertical(
            top: Radius.zero,
            bottom: Radius.circular(25.0)
        ),

      ),
      child:
        Column(
          children: [
            //header
            Container(
              margin: EdgeInsets.only(top: 40.0, left: 25.0),
              alignment:  Alignment.centerLeft,
              child:
                Text(
                  'Safe Bubble',
                  style: TextStyle(
                    fontSize: 36.0,
                    color: Colors.white,
                    fontFamily: 'Helvetica',
                    decoration: TextDecoration.none
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 25.0),
              alignment:  Alignment.centerLeft,
              child:
                Text(
                  "Virginia Tech Health App for Covid-19",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontFamily: 'Helvetica',
                    decoration: TextDecoration.none
                  )
                )
            ),
            //contact information
            Row (
              children: [
                Container(
                  margin: EdgeInsets.only(top:18.0, left: 35.0),
                  child:(
                    Image(
                      image: AssetImage("assets/icons/smile.png"),
                      width: 35.0
                    )
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.0, left: 20.0),
                  child:
                    Text(
                      'You have NOT been known as a close \n contact of a known infected member',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Helvetica',
                        fontWeight: FontWeight.w200,
                        decoration: TextDecoration.none
                      )
                    )
                  )
              ]
            ),
            //buttons
            Row (
              children: [
                Container(
                  margin: EdgeInsets.only(left: 25.0, top: 15.0),
                  child: FlatButton(
                    color: Colors.yellow[800],
                    highlightColor: Colors.yellow[600],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text(
                      "Report Symptom",
                      style: TextStyle(
                        fontSize: 12.0
                      )
                    ),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0, top: 15.0),
                  child: FlatButton(
                    color: Colors.red[800],
                    highlightColor: Colors.red[600],
                    colorBrightness: Brightness.dark,
                    splashColor: Colors.grey,
                    child: Text(
                        "Report Posotove",
                        style: TextStyle(
                            fontSize: 12.0
                        )
                    ),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    onPressed: () {},
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 15.0),
                  child: Material(
                    color: Colors.green,
                    child:
                     IconButton(
                      icon: Icon(
                        Icons.info,
                        color: Colors.white
                      ),
                      iconSize: 36.0
                    )
                  )
                )
              ]
            )
          ]
        )
    );
  }
}

