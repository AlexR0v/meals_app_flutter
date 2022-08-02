import 'package:flutter/material.dart';
import 'package:meals_app_flutter/components/core/app_bar.dart';
import 'package:meals_app_flutter/components/meals/meals_item.dart';

import '../models/dummu_data.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static const routeName = '/category_details';

  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String? title = routeArgs['title'];
    final String? categoryId = routeArgs['id'];
    final categoryMeals = dummyMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: CustomAppBar(title: title ?? ''),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
