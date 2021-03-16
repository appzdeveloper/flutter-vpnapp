import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'server_locations.dart';
import 'settings.dart';
class VpnHome extends StatefulWidget {
  @override
  _VpnHomeState createState() => _VpnHomeState();
}

class _VpnHomeState extends State<VpnHome> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  var isConnect = false;
  String connectButtonTxt = "CONNECT";

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgs/ic_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 60, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [ Image(
                              height: 50,
                              image: AssetImage('assets/imgs/firevpn.png')),
                            new IconButton(
                                  icon: Icon(Icons.settings),
                                  color: Colors.red,
                                  iconSize:40,
                                  onPressed: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Settings()),
                                    );
                                  },
                                ),

                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 130),
                          child: Image(
                              // height: 50,
                              image: AssetImage(isConnect ? ConnectImage : DisConnectImage)),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: ButtonTheme(
                              minWidth: 300.0,
                              height: 50.0,
                              child: RaisedButton(
                                onPressed: () {
                                  setState(() {
                                    if (isConnect){
                                      isConnect = false;
                                      connectButtonTxt = "CONNECT";
                                    } else {
                                      isConnect = true;
                                      connectButtonTxt = "DISCONNECT";
                                    }
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    ),
                                child:  Text(connectButtonTxt,
                                    style: TextStyle(fontSize: 20)),
                                color: isConnect ? Colors.red : Colors.grey,
                                textColor: Colors.white,
                                elevation: 0.0,
                              ),
                            )),
                      ],
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    //your elements here
                    Padding(
                        padding: EdgeInsets.only(bottom: 150,left: 50,right: 50),
                        child: Center(child:  ButtonTheme(
                          minWidth: 300.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              showMaterialModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.transparent,
                                builder: (context) => new Container(
                                  height: 500.0,
                                  color: Colors.transparent, //could change this to Color(0xFF737373),
                                  //so you don't have to change MaterialApp canvasColor
                                  child: ServerLocations(),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                              Image(
                                // height: 50,
                                  image: AssetImage(USFlag)),
                              Padding(padding: EdgeInsets.only(left: 10), child: Text("Los Angeles"),),
                              Padding(padding: EdgeInsets.only(left: 10), child: Image(
                                // height: 50,
                                  image: AssetImage(NetImg)),),
                              Padding(padding: EdgeInsets.only(left: 10), child:  Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.black,
                                size: 30.0,
                              ))
                            ],),
                            color:  Colors.white,
                            // textColor: Colors.white,
                            elevation: 0.0,
                          ),
                        ))),
                  ],
                ),
              ],
            )));
  }
}
