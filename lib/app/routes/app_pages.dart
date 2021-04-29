import 'package:get/get.dart';

import 'package:flutter_challenges/app/modules/food/bindings/food_binding.dart';
import 'package:flutter_challenges/app/modules/food/views/food_view.dart';
import 'package:flutter_challenges/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_challenges/app/modules/home/views/home_view.dart';
import 'package:flutter_challenges/app/modules/index/bindings/index_binding.dart';
import 'package:flutter_challenges/app/modules/index/views/index_view.dart';
import 'package:flutter_challenges/app/modules/lollipop/bindings/lollipop_binding.dart';
import 'package:flutter_challenges/app/modules/lollipop/views/lollipop_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INDEX;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INDEX,
      page: () => IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.FOOD,
      page: () => FoodView(),
      binding: FoodBinding(),
    ),
    GetPage(
      name: _Paths.LOLLIPOP,
      page: () => LollipopView(),
      binding: LollipopBinding(),
    ),
  ];
}
