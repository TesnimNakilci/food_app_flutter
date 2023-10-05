import 'package:flutter/material.dart';
import 'package:food_app_flutter/model/constants/data_constant.dart';

import '../widgets/recipe_item.dart';


class RecipCard extends StatefulWidget {
  const RecipCard({Key? key}) : super(key: key);

  @override
  State<RecipCard> createState() => _RecipCardState();
}

class _RecipCardState extends State<RecipCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data_recipe.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return RecipeItem(
          name: data_recipe[index].name,
          imageUrl: data_recipe[index].imageUrl,
          details: data_recipe[index].details,

        );
      },
    );
  }
}
