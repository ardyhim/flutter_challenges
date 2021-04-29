import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/lollipop_controller.dart';

class LollipopView extends GetView<LollipopController> {
  @override
  Widget build(BuildContext context) {
    Size size = context.mediaQuery.size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 240, 242, 1),
      body: Stack(
        children: [
          Container(
            height: size.height / 100 * 35,
            width: size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://source.unsplash.com/xdJN-7PZs5o",
                ),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: (size.height / 100 * 35) - 40,
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(252, 240, 242, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Lollies Raspberry",
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.headline4.copyWith(
                                  color: Color.fromRGBO(147, 85, 102, 1),
                                ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Lollipop",
                          style: GoogleFonts.oswald(
                            textStyle: Theme.of(context).textTheme.caption.copyWith(
                                  color: Color.fromRGBO(224, 196, 203, 1),
                                ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromRGBO(147, 85, 102, 1),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromRGBO(147, 85, 102, 1),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromRGBO(147, 85, 102, 1),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromRGBO(147, 85, 102, 1),
                            ),
                            Icon(
                              Icons.star_border,
                              color: Color.fromRGBO(147, 85, 102, 1),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Container(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "\$",
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context).textTheme.overline.copyWith(
                                              color: Color.fromRGBO(101, 73, 132, 1),
                                              fontSize: 17,
                                            ),
                                      ),
                                    ),
                                    TextSpan(
                                      text: "10.00",
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context).textTheme.headline4.copyWith(
                                              color: Color.fromRGBO(101, 73, 132, 1),
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 232, 233, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "-",
                                        style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context).textTheme.button.copyWith(
                                                color: Color.fromRGBO(147, 85, 102, 1),
                                                fontSize: 28,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      "10",
                                      style: GoogleFonts.oswald(
                                        textStyle: Theme.of(context).textTheme.button.copyWith(
                                              color: Color.fromRGBO(147, 85, 102, 1),
                                            ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "+",
                                        style: GoogleFonts.oswald(
                                          textStyle: Theme.of(context).textTheme.button.copyWith(
                                                color: Color.fromRGBO(147, 85, 102, 1),
                                                fontSize: 28,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    "Clear lollipop made with organic roasted raspberry, lemon zest and a hint of dehydrated lemon",
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Color.fromRGBO(224, 196, 203, 1),
                          ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    "Materials",
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.headline6.copyWith(
                            color: Color.fromRGBO(147, 85, 102, 1),
                          ),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Text(
                    "organic pure cane sugar, organic light corn syrup, organic lemon, organic raspberry",
                    style: GoogleFonts.oswald(
                      textStyle: Theme.of(context).textTheme.bodyText2.copyWith(
                            color: Color.fromRGBO(224, 196, 203, 1),
                          ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
