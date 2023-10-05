import 'package:food_app_flutter/model/recipe.dart';

import '../meal.dart';
import '../tip.dart';

const data_meal = [
  Meal(
      id: 'm1',
      title: 'Potato',
      imageUrl: "assets/images/potato.png",
      weight: "0.25 Kg",
      days: "1 Day"),
  Meal(
      id: 'm2',
      title: 'Tomato',
      imageUrl: "assets/images/tomato.png",
      weight: "2 Kg",
      days: "10 Days"),
];

const data_tip = [
  Tip(
    title: 'Potato',
    details: "As a rule of thumb, the best place to store potatoes is in a cool, dry area of your kitchen, with good ventilation and out of direct sunlight. A kitchen cupboard or closet, even the basement or garage, can all the good choices.",
  ),
  Tip(
    title: 'Tomato',
    details: "Levy recommends storing ripe tomatoes upside down (stem-side down) on paper towels in an open container such as Tupperware, a shoe box, or a cardboard flat.",
  ),
];

const data_recipe = [
  Recipe(
    imageUrl: "assets/images/meal.png",
    name: 'Caesar Salad',
    details: "A Caesar salad is a green salad of romaine lettuce and croutons dressed with lemon juice, olive oil, egg, Worcestershire sauce, anchovies, garlic, Dijon mustard, Parmesan cheese, and black pepper. In its original form, this salad was prepared and served",
  ),
  Recipe(
    imageUrl: "assets/images/meal.png",
    name: 'Potato',
    details: "As a rule of thumb, the best place to store potatoes is in a cool, dry area of your kitchen, with good ventilation and out of direct sunlight. A kitchen cupboard or closet, even the basement or garage, can all the good choices.",
  ),
  Recipe(
    imageUrl: "assets/images/meal.png",
    name: 'Tomato',
    details: "Levy recommends storing ripe tomatoes upside down (stem-side down) on paper towels in an open container such as Tupperware, a shoe box, or a cardboard flat.",
  ),
];
