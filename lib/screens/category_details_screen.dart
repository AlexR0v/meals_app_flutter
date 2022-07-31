import 'package:flutter/material.dart';
import 'package:meals_app_flutter/components/core/app_bar.dart';

class CategoryDetailsScreen extends StatelessWidget {
  static String routeName = '/category_details';

  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

    final String? title = routeArgs['title'];
    final String? categoryId = routeArgs['id'];

    return Scaffold(
      appBar: CustomAppBar(title: title ?? ''),
      body: Center(
        child: Text('CategoryDetailsScreen'),
      ),
    );
  }
}
