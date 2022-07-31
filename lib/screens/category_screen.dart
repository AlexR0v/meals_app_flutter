import 'package:flutter/material.dart';
import 'package:meals_app_flutter/components/categories/category_item.dart';
import 'package:meals_app_flutter/components/core/app_bar.dart';
import 'package:meals_app_flutter/components/core/custom_drawer.dart';
import 'package:meals_app_flutter/models/dummu_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Выбери кухню',
      ),
      drawer: const CustomDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(24.0),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: dummyCategories
            .map((el) => CategoryItem(
                  title: el.title,
                  color: el.color,
                  id: el.id,
                ))
            .toList(),
      ),
    );
  }
}
