// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // import '../../db/database.dart';
// import '../../models/models.dart';
// import '../pages/pages.dart';
// import 'widgets.dart';

// class MenuGrid extends StatelessWidget {
//   const MenuGrid({
//     Key? key,
//     required this.meals,
//     required this.gridCount,
//   }) : super(key: key);

//   final List<TestMeal> meals;
//   final int gridCount;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: gridCount),
//         physics: BouncingScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: meals.length,
//         itemBuilder: (context, index) {
//           var meal = meals[index];
//           return GestureDetector(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => MealDetails(meal: meal))),
//             child: MenuGridTile(
//               item: meal,
//               image: meal.image!,
//               name: meal.name,
//               price: meal.price,
//             ),
//           );
//         });
//   }
// }

// class MenuList extends StatelessWidget {
//   const MenuList({
//     Key? key,
//     required this.meals,
//   }) : super(key: key);

//   final List<TestMeal> meals;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),
//         itemCount: meals.length,
//         itemBuilder: (context, index) {
//           final meal = meals[index];
//           return GestureDetector(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => MealDetails(meal: meal))),
//             child: MenuListTile(
//               image: meal.image!,
//               name: meal.name,
//               price: meal.price,
//             ),
//           );
//         });
//   }
// }

// class OrdersList extends StatelessWidget {
//   const OrdersList({
//     Key? key,
//     required this.orders,
//   }) : super(key: key);

//   final List<TestOrder> orders;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         physics: const BouncingScrollPhysics(),
//         itemCount: orders.length,
//         itemBuilder: (context, index) {
//           final order = orders[index];
//           return GestureDetector(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => CourierOrderDetails(order: order))),
//             child: OrderTile(
//               eatry: order.eatry,
//               client: order.client,
//               address: order.address,
//               eta: order.eta,
//               radius: order.radius,
//             ),
//           );
//         });
//   }
// }
