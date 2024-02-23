import 'dart:ui';

enum Categories{
  vegetables,
  fruit,
  meat,
  dairy,
  carbs,
  sweets,
  spices,
  convenience,
  hygiene,
  other
}

class Category{
  const Category(this.title,this.color,this.image);
  final String title;
  final Color color;
  final String image;
}