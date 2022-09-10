import '../models/models.dart';
import 'package:flutter/material.dart';
import 'package:tabler_icons/tabler_icons.dart';

class EatryFilter {
  static const List<FilterIcon> filertIcons = [
    timeIcon,
    locIcon,
    ratingIcon,
    vetIcon,
    // budgetIcon,
    // xpIcon,
  ];

  static const timeIcon = FilterIcon(
    icon: TablerIcons.calendar_time,
    label: 'Active hours',
  );
  static const locIcon = FilterIcon(
    icon: TablerIcons.location,
    label: 'Location',
  );
  static const ratingIcon = FilterIcon(
    icon: TablerIcons.stars,
    label: 'Rating',
  );
  static const vetIcon = FilterIcon(
    icon: Icons.verified_outlined,
    label: 'Verified',
  );
  // static const budgetIcon = FilterIcon(
  //   icon: TablerIcons.wallet,
  //   label: 'Total budget',
  // );
  // static const xpIcon = FilterIcon(
  //   icon: TablerIcons.stars,
  //   label: 'Experience level',
  // );
}

class MealFilter {
  static const List<FilterIcon> filertIcons = [
    // priceIcon,
    meatIcon,
    vegieIcon,
    fastfoodIcon,
    balancedIcon,
    drinkIcon,
  ];

  // static const priceIcon = FilterIcon(
  //   icon: TablerIcons.currency_dollar,
  //   label: 'Price',
  // );
  static const meatIcon = FilterIcon(
    icon: TablerIcons.meat,
    label: 'Meaty',
  );
  static const vegieIcon = FilterIcon(
    icon: TablerIcons.leaf,
    label: 'Vegan',
  );
  static const fastfoodIcon = FilterIcon(
    icon: Icons.fastfood,
    label: 'Fastfood',
  );
  static const drinkIcon = FilterIcon(
    icon: Icons.local_drink,
    label: 'Drinks',
  );
  static const balancedIcon = FilterIcon(
    icon: Icons.balance,
    label: 'Balanced',
  );
  // static const budgetIcon = FilterIcon(
  //   icon: TablerIcons.wallet,
  //   label: 'Total budget',
  // );
  // static const xpIcon = FilterIcon(
  //   icon: TablerIcons.stars,
  //   label: 'Experience level',
  // );
}

class OrderFilter {
  static const List<FilterIcon> filertIcons = [
    priceIcon,
    locIcon,
    foodIcon,
  ];

  static const priceIcon = FilterIcon(
    icon: TablerIcons.coin,
    label: 'Price',
  );
  static const locIcon = FilterIcon(
    icon: TablerIcons.location,
    label: 'Address',
  );
  static const foodIcon = FilterIcon(
    icon: Icons.food_bank,
    label: 'Meal Type',
  );
}
