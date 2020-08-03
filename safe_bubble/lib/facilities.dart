import 'package:safe_bubble/NavigationBar.dart';
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
            flex: 2,
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
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(

                          child: Text(
                              'If you are using ios13 or higher, you can\njust put your phone near the tag'),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20,0,0,0),

                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                            ),
                            onPressed: (){},
                            color: Colors.orange,
                            child: Container(child: Text('   Scan\nQR code'))
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child:Column(
              children: <Widget>[
                Container(

                  padding: EdgeInsets.fromLTRB(0, 0, 360, 10),
                  child: Text(
                    'Gyms',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(

                          child: Text(
                              'If you are using ios13 or higher, you can\njust put your phone near the tag'),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(20,0,0,0),

                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: (){},
                              color: Colors.orange,
                              child: Container(child: Text('   Scan\nQR code'))
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 300, 5),
                  child: Text(
                    'Scientific Fact',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                  height: 200,
                  width: 1000,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[

                              Text('Symtoms of Covid-19'),
                              SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Icon(Icons.account_circle),
                                      Text('cough or fever')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Column(
                                  children: <Widget>[
                                      Icon(Icons.account_circle),
                                      Text('cough or fever'),
                                  ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                    width: 10,
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Icon(Icons.account_circle),
                                      Text('cough or fever'),
                                    ],
                                  ),
                                ],
                              ),
                              ],
                          ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text('Symtoms of Covid-19'),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[

                            Text('Symtoms of Covid-19'),
                            SizedBox(
                              height: 10,
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever')
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Column(
                                  children: <Widget>[
                                    Icon(Icons.account_circle),
                                    Text('cough or fever'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                     ],
                  ),
                ),
    ],
            ),
          ),

          Expanded(
            flex: 1,
            child:SizedBox(),
          ),

          Expanded(
            flex:2,
            child: NavigationBar(),
          ),
          ],
      ),
          );


  }
}


