import 'package:flutter/material.dart';
import 'package:recipe_app/home_screen.dart';


void main(){
  runApp(RecipeApp());
}
//root first widget material app
//screen first widget scaffold widget



class RecipeApp extends StatelessWidget{         //stateless: not changeable widget on same page
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title:"Recipe APP",    //widget attributes returns only static value, function or widget only
      home:  HomeScreen()
    //text widget display text on screen
      );

  }

}
