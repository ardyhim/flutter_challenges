import 'package:flutter_challenges/app/data/models/food.dart';

class DataListFood {
  static final List<ModelFoodCategories> categories = [
    new ModelFoodCategories(name: "All", icon: "icon/food/harvest.png"),
    new ModelFoodCategories(name: "Dish", icon: "icon/food/dish.png"),
    new ModelFoodCategories(name: "Pizza", icon: "icon/food/pizza.png"),
    new ModelFoodCategories(name: "Ramen", icon: "icon/food/ramen.png"),
    new ModelFoodCategories(name: "Salad", icon: "icon/food/salad.png"),
    new ModelFoodCategories(name: "Soup", icon: "icon/food/soup.png"),
    new ModelFoodCategories(name: "Burger", icon: "icon/food/burger.png"),
    new ModelFoodCategories(name: "Taco", icon: "icon/food/taco.png"),
  ];
  static final List<ModelFoodList> dish = [
    new ModelFoodList(name: "Sweet corn panna cotta", images: "images/food/sweet-corn-panna-cotta.jpg"),
    new ModelFoodList(name: "Mì quảng", images: "images/food/mi-quang.jpg"),
    new ModelFoodList(name: "Eggs with Mallow", images: "images/food/eggs-with-mallow.jpg"),
    new ModelFoodList(name: "Hot Spicy papaya salad", images: "images/food/hot-spicy-papaya-salad.jpg"),
    new ModelFoodList(name: "Burrata and Fruits", images: "images/food/burrata-and-fruits.jpg"),
    new ModelFoodList(name: "Chicken meat with herbs salad", images: "images/food/chicken-meat-with-herbs-salad.jpg"),
  ];
}
