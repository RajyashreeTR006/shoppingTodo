import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/category.dart';



const categories = {
  Categories.vegetables: Category(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
      ''
  ),
  Categories.fruit: Category(
    'Fruit',
    Color.fromARGB(255, 145, 255, 0),
    'https://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?cs=srgb&dl=pexels-jane-doan-1132047.jpg&fm=jpg'
  ),
  Categories.meat: Category(
    'Meat',
    Color.fromARGB(255, 255, 102, 0),
      'https://images.squarespace-cdn.com/content/v1/59f0e6beace8641044d76e9c/1669587646206-6Z76MY4X3GBFKIUQZJ4R/Social+Meat.jpeg'
  ),
  Categories.dairy: Category(
    'Dairy',
    Color.fromARGB(255, 0, 208, 255),
    'https://www.nutritionadvance.com/wp-content/uploads/2018/06/21-Healthy-Dairy-Products-From-Around-the-World.jpg'
  ),
  Categories.carbs: Category(
    'Carbs',
    Color.fromARGB(255, 0, 60, 255),
    'https://www.heart.org/-/media/Images/Healthy-Living/Healthy-Eating/Carbohydrates1.jpg'
  ),
  Categories.sweets: Category(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
    'https://domf5oio6qrcr.cloudfront.net/medialibrary/9685/iStock-544807136.jpg'
  ),
  Categories.spices: Category(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
      'https://domf5oio6qrcr.cloudfront.net/medialibrary/9685/iStock-544807136.jpg'
  ),
  Categories.convenience: Category(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
    'https://domf5oio6qrcr.cloudfront.net/medialibrary/9685/iStock-544807136.jpg'
  ),
  Categories.hygiene: Category(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
    'https://st3.depositphotos.com/1593759/19345/i/450/depositphotos_193454324-stock-photo-shampoo-soap-bath-sponge-isolated.jpg'
  ),
  Categories.other: Category(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
    'https://st3.depositphotos.com/1593759/19345/i/450/depositphotos_193454324-stock-photo-shampoo-soap-bath-sponge-isolated.jpg'
  ),
};