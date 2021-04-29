import 'package:flutter/material.dart';
import 'package:flutter_challenges/app/data/models/list_pages.dart';

class DataList {
  static final List<ModelPages> pages = [
    new ModelPages(name: "HOME", path: "/home", color: Colors.redAccent),
    new ModelPages(name: "FOOD DELIVERY", path: "/food", color: Colors.orangeAccent),
    new ModelPages(name: "LOLLIPOP", path: "/lollipop", color: Colors.pinkAccent),
  ];
}
