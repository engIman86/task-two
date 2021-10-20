import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:task_two/model/recipe.dart';
import 'package:task_two/screens/page_details.dart';

class RecipeCrd extends StatelessWidget {
  const RecipeCrd({Key? key, required Recipe recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return RecioeDetailScreen(
            recipe: recipe,
            ingredaint: recipe.ingridents,
          );
        }));
      },
      child: Card(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            image: DecorationImage(
                image: AssetImage(recipe.imageUrl), fit: BoxFit.fill),
          ),
          child: Stack(children: [
            Text(
              recipe.title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Positioned(
              child: Text(
                recipe.subtitle,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              top: 40,
            )
          ]),
        ),
      ),
    );
  }
}
