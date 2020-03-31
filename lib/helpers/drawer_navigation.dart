import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerNavigation extends StatefulWidget{
  @override
  _DrawerNavigation createState()=> _DrawerNavigation();
 
  
}

class _DrawerNavigation extends State<DrawerNavigation>{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Padam Ghimire"),
              accountEmail: Text("padamghimire2020@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Icon(Icons.filter_list,color: Colors.white,),
                  ),
              ),
              decoration: BoxDecoration(
                color: Colors.red
              ),
            )
          ],
        ),
      )
    );
  }

}