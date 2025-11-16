import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';

class RecipeDetailsScreen extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetailsScreen({super.key, required this.recipe});

  @override
  State<RecipeDetailsScreen> createState() => _RecipeDetailsScreenState();
}

class _RecipeDetailsScreenState extends State<RecipeDetailsScreen> {
  double sliderValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label)),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(widget.recipe.imageUrl),
            SizedBox(height: 10),
            Text(
              widget.recipe.label,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    Ingredient ingredient = widget.recipe.ingredients[index];
                    return Text(
                      "${ingredient.quantity * sliderValue} ${ingredient.measure} of ${ingredient.name}",
                    );
                  },
                  itemCount: widget.recipe.ingredients.length,
                ),
              ),
            ),

            Slider(
              activeColor: Colors.green,
              min: 1,
              max: 12,
              label: "${widget.recipe.servings * sliderValue} servings",
              divisions: 11,
              value: sliderValue,
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
