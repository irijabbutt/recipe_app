import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Recipe App', style: TextStyle(fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          // lazy loading, define design one time and update the list data on that design
          Recipe recipe = Recipe.listOfRecipes[index];
          return Image.asset(
            "D:/Apps/recipe_app/assets/${recipe.imageUrl}.jpg",
          );
        },
        itemCount: Recipe.listOfRecipes.length,
      ),
    );
  }
}
