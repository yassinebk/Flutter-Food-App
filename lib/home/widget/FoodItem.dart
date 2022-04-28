import 'package:flutter/material.dart';
import 'package:pet/constants/colors.dart';

import '../../models/food.dart';

class FoodItem extends StatelessWidget {
  final Food food;

  const FoodItem(this.food, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.all(5),
                width: 110,
                height: 110,
                child: Image.asset(food.imgURL, fit: BoxFit.fitHeight)),
            Expanded(
                child: Container(
                    padding:
                        const EdgeInsets.only(top: 20, left: 10, right: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(food.name,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        height: 1.5)),
                                const Icon(Icons.arrow_forward_ios_outlined)
                              ]),
                          const SizedBox(height: 5),
                          Container(
                            padding:const EdgeInsets.only(right:32),
                          child:Text(food.desc,
                              style: TextStyle(
                                fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: food.highlight
                                      ? kPrimaryColor
                                      : Colors.grey.withOpacity(0.8))),
                          ),
                          const SizedBox(height: 5),
                          Row(children: [
                            const Text('\$',
                                style:  TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold)),
                            Text('${food.price}',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold))
                          ])
                        ])))
          ],
        ));
  }
}
