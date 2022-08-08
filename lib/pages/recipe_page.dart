import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.0, //그림자
        actions: [
          Icon(
            CupertinoIcons.search,
            color: Colors.black,
          ),
          SizedBox(width: 15),
          Icon(
            CupertinoIcons.heart,
            color: Colors.redAccent,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: [
          RecipeTitle(),
          RecipeMenu(),
          RecipeListItem(),
          SizedBox(
            height: 10,
          ),
          RecipeListItem(),
          SizedBox(
            height: 10,
          ),
          RecipeListItem(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
