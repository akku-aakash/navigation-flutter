import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../dummy_data.dart';
import '../models/meal.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = '/category-meals';

  @override
  _CategoryMealScreenState createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealsScreen> {
  // final String categoryId;
  // final String categoryTitle;
  String categoryTitle;
  List<Meal> displayMeals;
  var _loadedintdata = false;

  void didChangeDependencies() {
    if (!_loadedintdata) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayMeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();
      _loadedintdata = true;
    }
    super.didChangeDependencies();
  }

  void _removedMeal(String mealId) {
    setState(() {
      displayMeals.remove((meal) => meal.id == mealId);
    });
  }
  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayMeals[index].id,
            title: displayMeals[index].title,
            imageUrl: displayMeals[index].imageUrl,
            duration: displayMeals[index].duration,
            affordability: displayMeals[index].affordability,
            complexity: displayMeals[index].complexity,
            removeItem: _removedMeal,
          );
        },
        itemCount: displayMeals.length,
      ),
    );
  }
}
