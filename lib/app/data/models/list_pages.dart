import 'dart:convert';
import 'package:flutter/widgets.dart';

class ModelPages {
  ModelPages({
    this.name,
    this.path,
    this.color,
  });

  String name;
  String path;
  Color color;

  factory ModelPages.fromRawJson(String str) => ModelPages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelPages.fromJson(Map<String, dynamic> json) => ModelPages(
        name: json["name"] == null ? null : json["name"],
        path: json["path"] == null ? null : json["path"],
        color: json["color"] == null ? null : json["color"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "path": path == null ? null : path,
        "color": color == null ? null : color,
      };
}
