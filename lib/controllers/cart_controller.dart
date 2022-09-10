// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../models/models.dart';

// class CartController extends GetxController {
//   final _meals = {}.obs;

//   void addMeal(TestMeal meal) {
//     if (_meals.containsKey(meal)) {
//       _meals[meal] += 1;
//     } else {
//       _meals[meal] = 1;
//     }
//   }

//   void removeMeal(TestMeal meal) {
//     if (_meals.containsKey(meal) && _meals[meal] == 1) {
//       _meals.removeWhere((key, value) => key == meal);
//     } else {
//       _meals[meal] -= 1;
//     }
//   }

//   void clearCart(RxMap<dynamic, dynamic> meals) {
//     while (meals.isNotEmpty) {
//       meals.forEach((key, value) => _meals.remove(key));
//       debugPrint('cart cleared');
//     }

//     // for (var meal in meals.keys) {
//     //   _meals.removeWhere((key, value) => key == meal);
//     // }
//   }

//   final _tax = 18.0;

//   get meals => _meals;

//   get tax => _tax;

//   get total => _meals.entries
//       .map((meal) => meal.key.price * meal.value)
//       .toList()
//       .reduce((value, element) => value + element)
//       .toStringAsFixed(0);

//   get itemCount => _meals.entries
//       .map((meal) => meal.value)
//       .toList()
//       .reduce((value, element) => value + element);

//   get mealsCount => _meals.length;
// }
