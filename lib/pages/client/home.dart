import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../models/models.dart';
import '../../utils/utils.dart';

class ClientHome extends StatefulWidget {
  const ClientHome({super.key});

  @override
  State<ClientHome> createState() => _ClientHomeState();
}

class _ClientHomeState extends State<ClientHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Client Home')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            // SizedBox(height: 160, child: buildMenu()),
            ListTile(
              title: Text('All Restaurants',
                  style: Theme.of(context).textTheme.headline5),
              subtitle: Text('Sorted by nearest to you',
                  style: Theme.of(context).textTheme.bodySmall),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.filter_1),
              ),
            ),
            // Expanded(flex: 3, child: buildEatries())
          ],
        ),
      ),
    );
  }

  Widget buildMenu() {
    List<TestMeal> meals = localMeals;
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          if (meal.isOnMenu == true) {
            return GestureDetector(
                // onTap: () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => MealDetails(meal: meal))),
                // child: MenuListTile(
                //   image: meal.image ?? 'assets/branding/grey.png',
                //   name: meal.name,
                //   price: meal.price,
                // ),
                );
          } else {
            return Container();
          }
        });
  }

  Widget buildEatries() {
    List<TestEatry> eatries = localEatries;

    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: eatries.length,
        itemBuilder: (context, index) {
          final eatry = eatries[index];
          return GestureDetector(
              // onTap: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => EatryDetails(eatry: eatry))),
              // child: FeaturedTile(
              //   image: eatry.image ?? 'assets/static/pub.webp',
              //   name: eatry.name,
              //   // hands: eatries[index]['hands'],
              // ),
              );
        });
  }

  // Widget buildFoodGroup() {}
}
