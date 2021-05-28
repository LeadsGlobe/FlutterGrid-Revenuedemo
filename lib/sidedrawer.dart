import 'package:flutter/material.dart';
import 'package:revenuedemo/first.dart';
import 'package:revenuedemo/homePage.dart';
import 'package:revenuedemo/second.dart';
class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/ogun.jpeg'),
                fit: BoxFit.cover
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('How To'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage())),
            },
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Extra'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage())),
            },
          ),
        ],
      ),
    );
  }
}