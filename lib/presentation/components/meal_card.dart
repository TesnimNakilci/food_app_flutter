import 'package:flutter/material.dart';
import 'package:food_app_flutter/model/constants/data_constant.dart';

import '../widgets/meal_item.dart';

class MealCard extends StatefulWidget {
  const MealCard({Key? key}) : super(key: key);

  @override
  _MealCardState createState() => _MealCardState();
}

class _MealCardState extends State<MealCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data_meal.length,
      physics: const ClampingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return MealItem(
          id: data_meal[index].id,
          title: data_meal[index].title,
          imageUrl: data_meal[index].imageUrl,
          weight: data_meal[index].weight,
          days: data_meal[index].days,
        );
      },
    );
  }
}
