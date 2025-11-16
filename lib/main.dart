import 'package:flutter/material.dart';
import 'package:recipe_app/home_screen.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Recipe App", home: HomeScreen());
  }
}
