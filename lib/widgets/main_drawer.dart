import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: ListTile(
              leading: Icon(Icons.food_bank),
              title: Text('Cooking Up !!!'),
            ),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Meals'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text('Filters'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/filter');
            },
          )
        ],
      ),
    );
  }
}
