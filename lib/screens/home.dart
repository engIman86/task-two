import 'package:flutter/material.dart';
import 'package:task_two/model/recipe.dart';
import 'package:task_two/model/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food pages'),
      ),
      body: RecipeCrd(recipe: recipe),
    );
  }
}
