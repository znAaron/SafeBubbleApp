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
                  child:Text("place holder2")
              )
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
        height: 260,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.vertical(
              top: Radius.zero,
              bottom: Radius.circular(25.0)
          ),

        ),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 45.0, left: 25.0),
                alignment:  Alignment.centerLeft,
                child:Text(
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
                child:Text(
                    "Virginia Tech Health App for Covid-19",
                    style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                        fontFamily: 'Helvetica',
                        decoration: TextDecoration.none
                    )
                )
            )
          ],
        )
    );
  }
}

