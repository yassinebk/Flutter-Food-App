import 'package:flutter/material.dart';

import '../../models/restaurent.dart';
import 'FoodItem.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  const FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: PageView(
            controller: pageController,
            onPageChanged: (index) => callback(index),
            children: category
                .map((e) => ListView.separated(
                    itemBuilder: (context, index) =>
                        FoodItem(restaurant.menu[category[selected]]![index]),
                    separatorBuilder: (i, index) => const SizedBox(height: 15),
                    itemCount: restaurant.menu[category[selected]]!.length))
                .toList()));
  }
}
