import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../models/models.dart';

class IntroTile extends StatelessWidget {
  const IntroTile(
      {required this.image, required this.name, Key? key, required this.route})
      : super(key: key);

  final String image;
  final String name;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 8),
        // constraints: BoxConstraints(maxHeight: 140),
        width: 150,
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, route),
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover))),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 12),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class FeaturedTile extends StatelessWidget {
  const FeaturedTile({required this.image, required this.name, Key? key})
      : super(key: key);

  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 12),
        constraints: const BoxConstraints(maxHeight: 120),
        width: 135,
        height: 120,
        child: InkWell(
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover))),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                  child: Text(
                    name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 41, 14),
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class MealOfDayTile extends StatelessWidget {
  const MealOfDayTile(
      {required this.image, required this.name, required this.price, Key? key})
      : super(key: key);

  final String image;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 12),
        constraints: const BoxConstraints(maxHeight: 120),
        width: 135,
        height: 120,
        child: InkWell(
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover))),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 41, 14),
                            fontSize: 14),
                      ),
                      const SizedBox(height: 10),
                      Text("$price XOF"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

// class MenuGridTile extends StatelessWidget {
//   MenuGridTile(
//       {required this.image,
//       required this.name,
//       required this.price,
//       required this.item,
//       Key? key})
//       : super(key: key);

//   final String image;
//   final String name;
//   final int price;
//   final TestMeal item;
//   final cartController = Get.put(CartController());
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.only(bottom: 8),
//         margin: const EdgeInsets.only(left: 12),
//         // // width: 200,
//         // height: 160,
//         child: InkWell(
//           child: Card(
//             shape: const RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(Radius.circular(8))),
//             color: Colors.white,
//             shadowColor: Colors.grey[300],
//             elevation: 1,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                     height: 116,
//                     decoration: BoxDecoration(
//                         borderRadius:
//                             const BorderRadius.all(Radius.circular(8)),
//                         image: DecorationImage(
//                             image: AssetImage(image), fit: BoxFit.cover))),
//                 Container(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(name,
//                               style: Theme.of(context).textTheme.headline6),
//                           Text("$price XOF",
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium!
//                                   .copyWith(
//                                       color: Theme.of(context)
//                                           .colorScheme
//                                           .secondary)),
//                         ],
//                       ),
//                       IconButton(
//                           tooltip: 'Add to cart',
//                           highlightColor:
//                               Theme.of(context).colorScheme.secondary,
//                           onPressed: () {
//                             cartController.addMeal(item);
//                           },
//                           icon: const Icon(TablerIcons.shopping_cart_plus)),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }

class MenuListTile extends StatelessWidget {
  const MenuListTile(
      {required this.image, required this.name, required this.price, Key? key})
      : super(key: key);

  final String image;
  final String name;
  final int price;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 12),
        width: 200,
        child: InkWell(
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover))),
                ListTile(
                  title:
                      Text(name, style: Theme.of(context).textTheme.headline4),
                  subtitle: Text("$price XOF",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Theme.of(context).colorScheme.secondary)),
                ),
              ],
            ),
          ),
        ));
  }
}

class EatryTile extends StatelessWidget {
  const EatryTile({
    Key? key,
    this.image,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    // this.rating,
    this.payvet = false,
    this.isVerified = false,
    this.isPromoted = false,
  }) : super(key: key);

  final String? image;
  final String name;
  final String email;
  final String address;
  final String phone;
  // final num? rating;
  final bool payvet;
  final bool? isPromoted;
  final bool? isVerified;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 12),
        // width: 135,
        height: 140,
        child: InkWell(
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      // height: 100,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage(
                                  image ?? 'assets/branding/grey.png'),
                              fit: BoxFit.cover))),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          name,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                        ),
                        Text(
                          email,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          address,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          phone,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class CourierTile extends StatelessWidget {
  const CourierTile({
    Key? key,
    required this.fullname,
    required this.deliveries,
    required this.address,
  }) : super(key: key);

  // final String? image;
  final String fullname;
  final String address;
  final int deliveries;

  @override
  Widget build(BuildContext context) => ListTile(
        // tileColor: Colors.white,
        leading: const Icon(
          Icons.delivery_dining,
          size: 48,
          color: Colors.grey,
        ),
        // leading: CircleAvatar(
        //   backgroundImage: AssetImage(image!),
        //   radius: 30,
        // ),
        title: Text(fullname, style: Theme.of(context).textTheme.headline2),
        // subtitle: Text('$eta minutes from you'),
        trailing:
            Text('$deliveries', style: Theme.of(context).textTheme.bodyText1),
      );
}

class DeliveryTile extends StatelessWidget {
  const DeliveryTile({
    Key? key,
    this.id,
    this.price,
    this.eta = 0,
    this.payvet = false,
    required this.orders,
    required this.client,
    required this.address,
    required this.items,
  }) : super(key: key);

  final String orders;
  final String client;
  final String address;
  final List<String> items;
  final int? eta;
  final int? price;
  final int? id;
  final bool payvet;

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  orders,
                  style: const TextStyle(
                      // color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(TablerIcons.thumb_down),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(TablerIcons.heart),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Budget'),
                    Text('\$$price',
                        style: Theme.of(context).textTheme.headline2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('ETA'),
                    Text('$eta minutes ',
                        style: Theme.of(context).textTheme.headline2),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            payvet == false
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.credit_card_off, color: Colors.black38),
                          Text('Payment unverified'),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Go',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              TablerIcons.arrow_right,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.verified,
                              color: Colors.blue,
                            ),
                            Text(
                              'Payment verified',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 80,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Go',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                TablerIcons.arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ])
          ],
        ),
      );
}

class SettingsTile extends StatelessWidget {
  const SettingsTile(
      {Key? key, required this.title, required this.icon, required this.route})
      : super(key: key);

  final String title;
  final IconData icon;
  final String route;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.pushNamed(context, route),
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 22,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.grey.shade700,
        size: 12,
      ),
    );
  }
}

class FoodInfoTile extends StatelessWidget {
  const FoodInfoTile(
      {super.key, required this.icon, this.iconcolor, required this.label});
  final IconData icon;
  final Color? iconcolor;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Icon(
            icon,
            color: iconcolor,
            size: 24,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: Theme.of(context).textTheme.headline5,
          )
        ],
      ),
    );
  }
}

class FoodNumTile extends StatelessWidget {
  const FoodNumTile({super.key, required this.figure, required this.label});
  final num figure;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$figure',
            style: Theme.of(context).textTheme.headline4,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
    required this.eatry,
    required this.client,
    required this.address,
    this.items,
    this.radius = 5,
    this.eta = 0,
  }) : super(key: key);
  final String eatry;
  final String client;
  final String address;
  final int eta;
  final int? radius;
  final List<String>? items;

  @override
  Widget build(BuildContext context) => Container(
        height: 150,
        width: 150,
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14), color: Colors.grey[100]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(eatry, style: Theme.of(context).textTheme.headline3),
            Text(client, style: Theme.of(context).textTheme.bodyText1),
            Text('Radius: $radius km',
                style: Theme.of(context).textTheme.bodyText2),
            Row(
              children: [
                Expanded(child: Text('ETA: $eta min.')),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 14,
                  ),
                )
              ],
            ),
          ],
        ),
      );
}

class OrderListTile extends StatelessWidget {
  const OrderListTile({
    Key? key,
    required this.eatry,
    required this.client,
    required this.address,
    required this.items,
    this.isDelivered = false,
  }) : super(key: key);

  final String eatry;
  final String client;
  final String address;
  final List<String> items;
  final bool? isDelivered;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 8),
        margin: const EdgeInsets.only(left: 12),
        // width: 135,
        height: 140,
        child: InkWell(
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: Colors.white,
            shadowColor: Colors.grey[300],
            elevation: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                      // height: 100,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage('assets/branding/grey.png'),
                              fit: BoxFit.cover))),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          eatry,
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.tertiary),
                        ),
                        Text(
                          client,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          address,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          '000-888-333',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        // for (var item in items) ...[
                        //   FoodInfoTile(
                        //     icon: Icons.food_bank,
                        //     label: item,
                        //   )
                        // ]
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
