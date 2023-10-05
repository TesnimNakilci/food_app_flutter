import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final String weight;
  final String days;

  const Meal({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.weight,
    required this.days,
  });
}