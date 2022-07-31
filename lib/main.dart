import 'package:flutter/material.dart';
import 'package:meals_app_flutter/screens/category_details_screen.dart';
import 'package:meals_app_flutter/screens/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.cyan,
          accentColor: Colors.amber,
        ).copyWith(
          secondary: const Color.fromRGBO(255, 254, 229, 1),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline1: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
      routes: {
        '/': (context) => const CategoryScreen(),
        CategoryDetailsScreen.routeName: (context) => const CategoryDetailsScreen(),
      },
    );
  }
}
