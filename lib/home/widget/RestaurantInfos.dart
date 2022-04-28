import 'package:flutter/material.dart';

import '../../models/restaurent.dart';

class RestaurantInfos extends StatelessWidget {
  const RestaurantInfos({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(5)),
        child: Text(restaurant.waitTime,
            style: const TextStyle(color: Color.fromARGB(255, 201, 79, 79))),
      ),
      const SizedBox(width: 10),
      Text(
        restaurant.distance,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 233, 193, 132)),
      ),
      const SizedBox(width: 10),
      Text(
        restaurant.label,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 223, 178, 111)),
      ),
    ]);
  }
}
