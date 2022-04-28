import 'package:flutter/material.dart';
import 'package:pet/constants/colors.dart';
import 'package:pet/home/widget/Food_list.dart';
import 'package:pet/home/widget/restaurant_widget.dart';
import 'package:pet/models/restaurent.dart';
import 'package:pet/widgets/CustomAppBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/FoodListView.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final restaurant = Restaurant.generateRestaurant();
  final pageController = PageController();
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
          backgroundColor: kPrimaryColor,
          elevation: 2,
        child: const Icon(Icons.shopping_bag_outlined,color:Colors.black),
      ),
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(
              Icons.arrow_back_ios_outlined, Icons.search_outlined),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
              pageController.jumpToPage(index);
            });
          }, restaurant),
          Expanded(
              child: FoodListView(
            selected,
            (int index) {
              setState(() {
                selected = index;
              });
            },
            pageController,
            restaurant,
          )),
          Container(
            padding:EdgeInsets.symmetric(horizontal: 25),
            height:60,
            child:SmoothPageIndicator(
              controller: pageController,
              count:restaurant.menu.length,
              effect:CustomizableEffect(
                dotDecoration:DotDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  width:8,
                  height:8,
                  borderRadius: BorderRadius.circular(8)
                ),
                activeDotDecoration:DotDecoration(
                  width:10,
                  height:10,
                  color:kBackground,
                    borderRadius:BorderRadius.circular(10),
                  dotBorder: const DotBorder(
                    color:kPrimaryColor,
                    padding:2,
                    width:2
                  )
                )
              ),
              onDotClicked: (index)=>pageController.jumpToPage(index),

            )
          )
        ],
      ),
    );
  }
}
