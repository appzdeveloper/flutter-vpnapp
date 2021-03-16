import 'package:flutter/material.dart';
import 'constant.dart';
class ServerLocations extends StatelessWidget {

  bool isVisible = false;

  final List<ItemModel> _items = [
    ItemModel(0, Icons.account_balance, 'Balance', 'Some info'),
    ItemModel(1, Icons.account_balance_wallet, 'Balance wallet', 'Some info'),
    ItemModel(2, Icons.alarm, 'Alarm', 'Some info'),
    ItemModel(3, Icons.my_location, 'My location', 'Some info'),
    ItemModel(4, Icons.laptop, 'Laptop', 'Some info'),
    ItemModel(5, Icons.backup, 'Backup', 'Some info'),
    ItemModel(6, Icons.settings, 'Settings', 'Some info'),
    ItemModel(7, Icons.call, 'Call', 'Some info'),
    ItemModel(8, Icons.restore, 'Restore', 'Some info'),
    ItemModel(9, Icons.camera_alt, 'Camera', 'Some info'),
  ];


  @override

  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(10.0),
                topRight: const Radius.circular(10.0))),
        child:Column(children:[ Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding: EdgeInsets.only(left: 10, top: 20),child: Text('Server Locations', style: TextStyle(fontSize: 22),),)
            , Padding(padding: EdgeInsets.only(right: 10, top: 20),child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black,
              size: 30.0,
            )),],),Expanded(child:  ListView.builder(
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
          leading:   Image(
            // height: 50,
              image: AssetImage(USFlag)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text(item.title), Image.asset(NetImg)],),
          trailing:  Icon(
            Icons.keyboard_arrow_right,
            color: Colors.black,
            size: 30.0,
          ),
          // isThreeLine: true,
        ),
       );
    }
    ))]));
  }
}


class ItemModel {
  // class constructor
  ItemModel(this.id, this.icon, this.title, this.description);

  // class fields
  final int id;
  final IconData icon;
  final String title;
  final String description;
}
