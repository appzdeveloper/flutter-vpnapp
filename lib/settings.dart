import 'package:flutter/material.dart';
import 'constant.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;



  final List<ItemModel> _items = [
    ItemModel(0, Icons.restore, 'Restore purchases', 'Some info'),
    ItemModel(1, Icons.star, 'Rate the app', 'Some info'),
    ItemModel(2, Icons.person, 'Support', 'Some info'),
    ItemModel(3, Icons.info_outline_rounded,  'About', 'Some info'),
  ];

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
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            "Settings",
            style: TextStyle(color: Colors.black, fontFamily: FONT_BOLD),
          ),
          actions: [ new IconButton(
            icon: Icon(Icons.close),
            color: Colors.black,
            iconSize:40,
            onPressed: () {
              Navigator.pop(context);

            },
          ),],
        ),
        body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/imgs/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
              // Let the ListView know how many items it needs to build.
                itemCount: _items.length,
                // Provide a builder function. This is where the magic happens.
                // Convert each item into a widget based on the type of item it is.
                itemBuilder: (context, index) {
                  final item = _items[index];

                  return InkWell( // Enables taps for child and add ripple effect when child widget is long pressed.
                    onTap: (){
                    },
                    child:
                    ListTile(
                      leading:  Icon(
                        item.icon,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text(item.title) ],),
                      subtitle: Text("") ,
                      trailing:  Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      // isThreeLine: true,
                    ),
                  );
                }
            )));
  }
}

class ItemModel {
  // class constructor
  ItemModel(this.id, this.icon, this.title, this.pagename);

  // class fields
  final int id;
  final IconData icon;
  final String title;
  final String pagename;
}