import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String desc;
  String label;
  String logoURL;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.waitTime, this.distance, this.label, this.score,
      this.logoURL, this.menu, this.desc);

  static Restaurant generateRestaurant() {
    return Restaurant(
        'Restaurant',
        '20 30 min',
        '2.4km',
        'Restaurant',
        4.7,
        'assets/images/res_logo.png',
        {
          'Recommend': Food.generatePopularFood(),
          'Popular': Food.generatePopularFood2(),
          'Noodles': [],
          'Pizza': []
        },
        "Orange sandiwches are delicious");
  }
}
