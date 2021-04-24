import 'package:flutter/material.dart';
import 'package:flutter_challenges/app/data/db/list_pages.dart';

import 'package:get/get.dart';

import '../controllers/index_controller.dart';

class IndexView extends GetView<IndexController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexView'),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: DataList.pages.map((page) {
              return InkWell(
                onTap: () => Get.offNamed(page.path),
                child: Container(
                  color: page.color,
                  child: Center(
                    child: Text(page.name),
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
