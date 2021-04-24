import 'dart:convert';

class ModelFoodCategories {
  ModelFoodCategories({
    this.name,
    this.icon,
  });

  String name;
  String icon;

  factory ModelFoodCategories.fromRawJson(String str) => ModelFoodCategories.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelFoodCategories.fromJson(Map<String, dynamic> json) => ModelFoodCategories(
        name: json["name"] == null ? null : json["name"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "icon": icon == null ? null : icon,
      };
}

class ModelFoodList {
  ModelFoodList({
    this.name,
    this.images,
  });

  String name;
  String images;

  factory ModelFoodList.fromRawJson(String str) => ModelFoodList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ModelFoodList.fromJson(Map<String, dynamic> json) => ModelFoodList(
        name: json["name"] == null ? null : json["name"],
        images: json["images"] == null ? null : json["images"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "images": images == null ? null : images,
      };
}
