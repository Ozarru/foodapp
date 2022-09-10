class TestCourier {
  const TestCourier({
    this.id,
    required this.fullname,
    required this.deliveries,
    required this.address,
  });

  final int? id;
  final String fullname;
  final String address;
  final int deliveries;
  final double? lat = 6.256;
  final double? lng = 1.325;
}

class TestDelivery {
  const TestDelivery({
    this.id,
    required this.eatry,
    required this.client,
    required this.eta,
    required this.price,
    required this.address,
    required this.items,
    this.payvet,
  });

  final int? id;
  final String eatry;
  final String client;
  final String address;
  final int eta;
  final int price;
  final List<String> items;
  final bool? payvet;
}

class TestOrder {
  final String? id;
  final String eatry;
  final String client;
  final String address;
  final int eta;
  final int? radius;
  final List<String>? items;
  // final List<TestMeal>? items;
  final double startLat;
  final double startLng;
  final double stopLat;
  final double stopLng;

  const TestOrder({
    required this.startLat,
    required this.startLng,
    required this.stopLat,
    required this.stopLng,
    this.id,
    this.radius,
    this.items,
    required this.eatry,
    required this.client,
    required this.eta,
    required this.address,
  });
}

class TestEatry {
  const TestEatry({
    this.id,
    this.image,
    required this.name,
    required this.email,
    required this.address,
    required this.phone,
    this.employees,
    this.managers,
    this.owners,
    this.isPromoted,
    this.isVerified,
  });
  final int? id;
  final String? image;
  final String name;
  final String email;
  final String address;
  final String phone;
  final int? employees;
  final int? managers;
  final int? owners;
  final bool? isPromoted;
  final bool? isVerified;
}

class TestMeal {
  final String? image;
  final String name;
  final int price;
  final bool? isOnMenu;

  const TestMeal({
    this.image,
    this.isOnMenu,
    required this.name,
    required this.price,
  });
}

class TestMealofDay {
  final String? image;
  final String name;
  final int price;

  const TestMealofDay({
    this.image,
    required this.name,
    required this.price,
  });
}

class TestMenuGroup {
  const TestMenuGroup({
    this.id,
    required this.eatry,
    required this.name,
    this.description,
  });

  final int? id;
  final String name;
  final String eatry;
  final String? description;
}
