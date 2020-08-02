import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  bool isHome;
  bool isInfo;
  bool isFaci;
  bool isSetting;
  List<bool> current;

  @override
  void initState() {
    super.initState();

    current = new List(4);
    isHome = true;
    isInfo = false;
    isFaci = false;
    isSetting = false;
    current[0] = isHome;
    current[1] = isInfo;
    current[2] = isFaci;
    current[3] = isSetting;
  }

  @override
  Widget build(BuildContext context) {
    Map param = ModalRoute.of(context).settings.arguments;
    if (param != null) {
      isHome = param['isHome'];
      isInfo = param['isInfo'];
      isFaci = param['isFaci'];
      isSetting = param['isSetting'];

    }
    print(param);
//    isHome = current[0];
    Color homeColor = isHome ? Color(0xffb9d5ff) : Colors.white;
//    isInfo =  current[1];
    Color infoColor = isInfo ? Color(0xffb9d5ff) : Colors.white;
//    isFaci =  current[2];
    Color faciColor = isFaci ? Color(0xffb9d5ff) : Colors.white;
//    isSetting =  current[3];
    Color settingColor = isSetting ? Color(0xffb9d5ff) : Colors.white;

    return Container(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            //start

            Expanded(child: SizedBox(), flex: 1),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  //背景
                  color: homeColor,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  //设置四周边框
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 32.0,
                        child: IconButton(
                          icon: Icon(Icons.home),
                          color: Colors.grey,
                          onPressed: () {
//
                            Navigator.pushNamed((context), '/home', arguments: {
                              'isHome': true,
                              'isInfo': false,
                              'isFaci': false,
                              'isSetting': false,
                            });
                          },
                        ),
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(child: SizedBox(), flex: 1),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  //背景
                  color: infoColor,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  //设置四周边框
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 32.0,
                        child: IconButton(
                          icon: Icon(Icons.info),
                          color: Colors.grey,
                          onPressed: () {
                            Navigator.pushReplacementNamed((context), '/info',
                                arguments: {
                                  'isHome': false,
                                  'isInfo': true,
                                  'isFaci': false,
                                  'isSetting': false,
                                });
                          },
                        ),
                      ),
                      Text(
                        "Info",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 3,
            ),
            Expanded(child: SizedBox(), flex: 1),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  //背景
                  color: faciColor,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  //设置四周边框
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 32.0,
                        child: IconButton(
                          icon: Icon(Icons.store),
                          color: Colors.grey,
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                (context), '/facilities',
                                arguments: {
                                  'isHome': false,
                                  'isInfo': false,
                                  'isFaci': true,
                                  'isSetting': false,
                                });
                          },
                        ),
                      ),
                      Text(
                        "Facilities",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 4,
            ),
            Expanded(child: SizedBox(), flex: 1),
            Expanded(
              child: Container(
                decoration: new BoxDecoration(
                  //背景
                  color: settingColor,
                  //设置四周圆角 角度
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                  ),
                  //设置四周边框
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 7),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 32.0,
                        child: IconButton(
                          icon: Icon(Icons.settings),
                          color: Colors.grey,
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                (context), '/setting',
                                arguments: {
                            'isHome': false,
                            'isInfo': false,
                            'isFaci': false,
                            'isSetting': true,});
                          },
                        ),
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 4,
            ),
            Expanded(child: SizedBox(), flex: 1),
          ],
        ));
  }
}
