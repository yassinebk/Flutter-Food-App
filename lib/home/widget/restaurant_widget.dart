import 'package:flutter/material.dart';
import 'package:pet/models/restaurent.dart';

import 'RestaurantDescription.dart';
import 'RestaurantInfos.dart';

class RestaurantInfo extends StatelessWidget {
  RestaurantInfo({Key? key}) : super(key: key);
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 40),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(restaurant.name,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                RestaurantInfos(restaurant: restaurant),
              ],
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(restaurant.logoURL, width: 60))
          ]),
          const SizedBox(height: 20),
          TextDescWithScore(restaurant: restaurant)
        ]));
  }
}
