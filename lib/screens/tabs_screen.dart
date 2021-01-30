import 'package:flutter/material.dart';
import '../screens/favourites_screen.dart';
import '../screens/category_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meal'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Categories',
                ),
                Tab(
                  icon: Icon(Icons.favorite_outline_outlined),
                  text: 'Favorites',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesScreen(),
              FavouritesScreen(),
            ],
          ),
        ));
  }
}
