import 'package:flutter/material.dart';
import 'package:pet/constants/colors.dart';

import '../models/food.dart';
import 'food_quantity.dart';

class FoodDetail extends StatelessWidget {
  final Food food;
  const FoodDetail(this.food, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 600,
        color: kBackground,
        padding: const EdgeInsets.all(25),
        child: Column(children: [
          Text(food.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.waitTime),
              _buildIconText(Icons.star_border_outlined, Colors.amber,
                  food.score.toString()),
              _buildIconText(
                  Icons.access_time_outlined, Colors.blue, food.waitTime),
            ],
          ),
          const SizedBox(height: 30),
          FoodQuantity(food),
          const SizedBox(height: 30),
          Row(
            children: [
              const Text(
                "Ingredients",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                      child: Column(
                        children: [
                          Image.asset(
                            food.ingredients[index].values.first,
                            width: 52,
                          ),
                          Text(food.ingredients[index].keys.first)
                        ],
                      )),
                  separatorBuilder: (_, index) => SizedBox(width: 20),
                  itemCount: food.ingredients.length)),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text("About",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                food.about,
                style: const TextStyle(
                    fontSize: 14, wordSpacing: 1.2, height: 1.5),
              )
            ],
          )
        ]),
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(children: [
      Icon(icon, color: color, size: 20),
      Text(text, style: const TextStyle(fontSize: 16))
    ]);
  }
}
