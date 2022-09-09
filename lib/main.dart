import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/category_meals_screen.dart';
import 'package:meals_app/screens/meal_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
      ),
      home: const CategoryScreen(),
      routes: {
        '/meals-category': (ctx) => const CategoryMealsScreen(),  // hard coded route path
        MealDetailScreen.routeName: (ctx) => const MealDetailScreen(), // getting route from
      },
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (ctx) => const CategoryMealsScreen()),
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (ctx) => const CategoryMealsScreen()),
    );
  }
}
