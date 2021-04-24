import 'package:flutter/material.dart';
import 'package:flutter_challenges/app/data/db/list_food.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/food_controller.dart';

class FoodView extends GetView<FoodController> {
  @override
  Widget build(BuildContext context) {
    Size size = context.mediaQuery.size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 234, 229, 1),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      child: Icon(Icons.menu_outlined),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: Container(
                      margin: EdgeInsets.all(1),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color.fromRGBO(237, 234, 229, 1),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              "https://source.unsplash.com/100x100?avatar,profile",
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    child: Text(
                      "Food Delivery",
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.headline6.copyWith(
                              color: Color.fromRGBO(45, 45, 49, 1),
                              fontSize: 35,
                            ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text(
                      "Ward Gateway Apt. 908",
                      style: GoogleFonts.roboto(
                        textStyle: Theme.of(context).textTheme.headline6.copyWith(
                              color: Color.fromRGBO(45, 45, 49, 0.8),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: DataListFood.categories.length,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    width: 80,
                    height: 100,
                    margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        if (i == 0)
                          BoxShadow(
                            spreadRadius: 3,
                            color: Colors.grey[300],
                            blurRadius: 4,
                          ),
                      ],
                      color: i == 0 ? Color.fromRGBO(241, 240, 236, 1) : Color.fromRGBO(237, 234, 229, 1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          DataListFood.categories[i].icon,
                          height: 35,
                          width: 35,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            DataListFood.categories[i].name,
                            style: GoogleFonts.roboto(
                              textStyle: Theme.of(context).textTheme.headline6.copyWith(
                                    color: Color.fromRGBO(45, 45, 49, 1),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int i) {
                return Container(
                  height: 140,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              DataListFood.dish[i].images,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width - 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    DataListFood.dish[i].name,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.headline6.copyWith(
                                            color: Color.fromRGBO(45, 45, 49, 1),
                                          ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "540 gr - 3300 kal",
                                      style: GoogleFonts.roboto(
                                        textStyle: Theme.of(context).textTheme.bodyText1.copyWith(
                                              color: Color.fromRGBO(168, 171, 178, 1),
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.time_to_leave,
                                    size: 18,
                                    color: Color.fromRGBO(60, 60, 60, 1),
                                  ),
                                  Text(
                                    " ~ 25 min",
                                    style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context).textTheme.caption.copyWith(
                                            color: Color.fromRGBO(60, 60, 60, 1),
                                            fontSize: 12,
                                          ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$25",
                              style: GoogleFonts.roboto(
                                textStyle: Theme.of(context).textTheme.headline6.copyWith(
                                      color: Color.fromRGBO(45, 45, 49, 1),
                                    ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 35,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Color.fromRGBO(237, 234, 229, 1),
                                  ),
                                ),
                                child: Icon(Icons.plus_one_outlined),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: DataListFood.dish.length,
            ),
          ),
        ],
      ),
    );
  }
}
