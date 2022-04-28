class Food {
  String imgURL;
  String desc;
  String waitTime;
  String name;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool highlight;

  Food(this.imgURL, this.desc, this.waitTime, this.name, this.score, this.cal,
      this.price, this.quantity, this.about, this.highlight, this.ingredients);

  static List<Food> generatePopularFood() {
    return [
      Food(
          "assets/images/dish1.png",
          "Sweet Food awesome to taste , cool to eat",
          "30m",
          "Makarellea",
          3,
          "300k",
          30,
          1,
          "ASIAN FOOD",
          true, [
        {
          "Shrimp": 'assets/images/ingre2.png',
          "Egg": 'assets/images/ingre3.png'
        }
      ]),
      Food(
          "assets/images/dish2.png",
          "Sour Food awesome to taste , cool to eat",
          "1H",
          "Pizza",
          3,
          "300k",
          30,
          1,
          "International food",
          false, [
        {
          "Potato": 'assets/images/ingre2.png',
          "Egg": 'assets/images/ingre3.png',
          "Cheese": 'assets/images/ingre4.png'
        }
      ]),
      Food("assets/images/dish3.png", "For better healthy life", "10m", "Salad",
          3, "100k", 30, 1, "Local food", false, [
        {"Potato": 'assets/images/ingre4.png'}
      ]),
      Food("assets/images/dish4.png", "For better healthy life", "10m", "Pasta",
          3, "850", 30, 1, "Italian FOOD", false, [
        {
          "Pasta": 'assets/images/ingre4.png',
          "Tomatoes": 'assets/images/ingre3.png',
          "Pepper": 'assets/images/ingre2.png',
          "Olive Oil": 'assets/images/ingre1.png',
          "Mozarella Cheese": 'assets/images/ingre4.png'
        }
      ])
    ];
  }

  static List<Food> generatePopularFood2() {
    return [
      Food("assets/images/dish3.png", "For better healthy life", "10m", "Salad",
          3, "100k", 50, 1, "Local food", false, [
            {"Potato": 'assets/images/ingre4.png'}
          ]),
      Food("assets/images/dish4.png", "For better healthy life", "10m", "Pasta",
          3, "850", 60, 1, "Italian FOOD", false, [
            {
              "Pasta": 'assets/images/ingre4.png',
              "Tomatoes": 'assets/images/ingre3.png',
              "Pepper": 'assets/images/ingre2.png',
              "Olive Oil": 'assets/images/ingre1.png',
              "Mozarella Cheese": 'assets/images/ingre4.png'
            }
          ])
    ];
  }
}
