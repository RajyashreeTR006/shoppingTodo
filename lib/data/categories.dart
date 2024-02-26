import 'dart:ui';

import 'package:flutter/material.dart';

import '../models/category.dart';



const categories = {
  Categories.vegetables: Category(
    'Vegetables',
    Color.fromARGB(255, 0, 255, 128),
      'https://media.istockphoto.com/id/589415708/photo/fresh-fruits-and-vegetables.jpg?s=612x612&w=0&k=20&c=aBFGUU-98pnoht73co8r2TZIKF3MDtBBu9KSxtxK_C0='
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
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHrPtxyBKhXDxVW7Z9tKnUCEOxetcRFecQ4tYF8VoyJI4OXNwrRl5bWwqDIb8-MZHhu9E&usqp=CAU'
  ),
  Categories.sweets: Category(
    'Sweets',
    Color.fromARGB(255, 255, 149, 0),
    'https://st.depositphotos.com/2702761/3312/i/450/depositphotos_33122479-stock-photo-traditional-indian-sweets.jpg'
  ),
  Categories.spices: Category(
    'Spices',
    Color.fromARGB(255, 255, 187, 0),
      'https://t4.ftcdn.net/jpg/01/02/58/91/360_F_102589163_hk02O92vzEYP0rZbVyvDTbkje1GaUDk1.jpg'
  ),
  Categories.convenience: Category(
    'Convenience',
    Color.fromARGB(255, 191, 0, 255),
    'https://t3.ftcdn.net/jpg/05/34/52/94/360_F_534529443_HGyGvhIXsXmYzlWASxN6u7GlDkIrulbt.jpg'
  ),
  Categories.hygiene: Category(
    'Hygiene',
    Color.fromARGB(255, 149, 0, 255),
    'https://st3.depositphotos.com/1593759/19345/i/450/depositphotos_193454324-stock-photo-shampoo-soap-bath-sponge-isolated.jpg'
  ),
  Categories.other: Category(
    'Other',
    Color.fromARGB(255, 0, 225, 255),
    'https://www.asianpaints.com/content/dam/asian_paints/colours/swatches/8232.png.transform/cc-width-720-height-540/image.png'
  ),
};