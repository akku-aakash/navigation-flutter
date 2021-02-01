import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenfree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactosefree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter your Products !'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text('Adust you meal selection'),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              SwitchListTile(
                  title: Text('Glutene-free'),
                  value: _glutenfree,
                  onChanged: (vak) {
                    setState(() {
                      _glutenfree = vak;
                    });
                  }),
              SwitchListTile(
                  title: Text('Vegetrain'),
                  value: _vegetarian,
                  onChanged: (vak) {
                    setState(() {
                      _vegetarian = vak;
                    });
                  }),
              SwitchListTile(
                  title: Text('Vegan'),
                  value: _vegan,
                  onChanged: (vak) {
                    setState(() {
                      _vegan = vak;
                    });
                  }),
              SwitchListTile(
                  title: Text('Lactose-free'),
                  value: _lactosefree,
                  onChanged: (vak) {
                    setState(() {
                      _lactosefree = vak;
                    });
                  }),
            ],
          ))
        ],
      ),
    );
  }
}
