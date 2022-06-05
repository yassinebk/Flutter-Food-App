import 'package:flutter/material.dart';
import 'package:pet/constants/colors.dart';
import 'package:pet/widgets/CustomAppBar.dart';
import 'package:pet/widgets/food_detail.dart';
import 'package:pet/widgets/food_quantity.dart';

import '../models/food.dart';
import '../widgets/food_image.dart';

class DetailPage extends StatelessWidget {
  final Food food;
  const DetailPage(this.food, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_new_outlined,
              Icons.favorite_border_rounded,
              leftCallback: () {
                Navigator.of(context).pop();
              },
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: Container(
          width: 100,
          height: 56,
          child: RawMaterialButton(
              padding: EdgeInsets.all(10),
              fillColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              elevation: 2,
              onPressed: () {},
              child: Row(
                children: [
                  Icon(Icons.shopping_bag_outlined,
                      color: Colors.black, size: 30),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Text(
                      food.quantity.toString(),
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  )
                ],
              ))),
    );
  }
}
