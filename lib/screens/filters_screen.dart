import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Your Products !'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
