import 'package:flutter/material.dart';
import 'constant.dart';
import 'intro_continue.dart';

class IntroPrivacy extends StatefulWidget {
  @override
  _IntroPrivacyState createState() => _IntroPrivacyState();
}

class _IntroPrivacyState extends State<IntroPrivacy>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

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
                image: AssetImage("assets/imgs/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 60, left: 10, right: 10),
                  child: Column(
                    children: [Text(
                      "Your privacy is important",
                      style: TextStyle(color: Colors.black, fontFamily: FONT_BOLD, fontSize: 20),
                    ),  Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Text.rich(
                    
                        TextSpan(
                            text: PRIVACY_TXT,

                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, fontFamily: FONT_BOLD, color: HexColor(FONT_COLOR1)),
                            children: <InlineSpan>[
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.red),
                              )
                            ]
                        )
                    ))],
                  ) ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 60, vertical:50),
                    width: double.infinity,
                    child:ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroContinue()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.red)),
                        child: const Text('Accept and Continue',
                            style: TextStyle(fontSize: 16)),
                        color: Colors.red,
                        textColor: Colors.white,
                        elevation: 0.0,
                      ),
                    )
                  ),
                ),
              ],
            )));
  }
}
