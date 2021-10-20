import 'package:flutter/material.dart';
import 'package:task_two/model/ingredaint.dart';

import 'package:task_two/model/recipe.dart';
import 'package:task_two/model/recipe_card.dart';

class RecioeDetailScreen extends StatelessWidget {
  final Recipe recipe;
  final List<Ingredient> ingredaint;

  const RecioeDetailScreen({
    Key? key,
    required this.recipe,
    required this.ingredaint,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main dishes'),
      ),
      body: ListView.builder(
        itemCount: recipe.ingridents.length,
        itemBuilder: (context, index) {
          return Card(
            child: Text(recipe.ingridents[index].name),
          );
        },
      ),
    );
  }
}
