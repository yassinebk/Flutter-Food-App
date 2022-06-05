import 'package:flutter/material.dart';
import 'package:pet/constants/colors.dart';

import '../models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  const FoodImg(this.food, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        child: Stack(children: [
          Column(children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: kBackground),
                ))
          ]),
          Align(
              alignment: Alignment.center,
              child: Container(
                  child: Image.asset(food.imgURL),
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        offset: const Offset(-1, 10),
                        blurRadius: 10)
                  ]),
                  margin: const EdgeInsets.all(15)))
        ]));
  }
}
