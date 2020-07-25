import 'package:flutter/material.dart';

class Facilities extends StatefulWidget {
  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Material(
            elevation: 25.0,
            child: Expanded(
                child: Container(
//              margin: EdgeInsets.(left: 40, top: 40),
                    //设置 child 居中

                    height: 100,
                    width: 500,

                    //边框设置
                    decoration: new BoxDecoration(
                      //背景
                      color: Colors.blue[700],
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                        bottomLeft: Radius.circular(8.0),
                        bottomRight: Radius.circular(8.0),
                      ),
                      //设置四周边框
                    ),
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                        child: SafeArea(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 12.0),
                              Text('Facilities',
                                  style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 0.1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.0,
                                  )),
                              SizedBox(height: 6.0),
                              Text('Virginia Tech Health App for Covid-19',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                  )),
                              SizedBox(height: 6.0),
                            ],
                          ),
                        ))),
                flex: 1),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 320, 10),
                  child: Text(
                    'Swipe In/out',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(50, 5, 50, 5),
                    decoration: new BoxDecoration(
                      //背景
                      color: Color(0xffb9d5ff),
                      //设置四周圆角 角度
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0),
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0),
                      ),
                      //设置四周边框
                    ),
                    child: Text(
                        'If you are using ios13 or higher, you can\njust put your phone near the tag'))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Color(0xffb9d5ff),
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.cyanAccent[400],
      ),
    );
  }
}
