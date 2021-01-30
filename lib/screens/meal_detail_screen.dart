import 'dart:ui';
import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == mealId);

    return Scaffold(
        appBar: AppBar(
          title: Text('$mealId'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
              width: double.infinity,
              height: 300,
            ),
            Container(
              // child: ,
            )
          ],
        ));
  }
}
