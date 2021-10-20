import 'package:task_two/model/ingredaint.dart';

class Recipe {
  final String title;
  final String subtitle;
  final String imageUrl;
  final List<Ingredient> ingridents;

  

  Recipe(
      {required this.title,
      required this.subtitle,
      required this.ingridents,
      required this.imageUrl});

 
}

Recipe recipe = Recipe(
    title: 'dolma',
    subtitle: 'iraqi food',
    ingridents: [
      Ingredient('onion', 1, 'kg'),
      Ingredient('rice', 1, 'kilo'),
      Ingredient('meat', 1, 'kilo')
    ],
    imageUrl: 'assets/dolma.png');
