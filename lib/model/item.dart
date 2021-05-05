import 'dart:ui';

import 'package:flutter/material.dart';

class Item {
  String name;
  String type;
  Color bgColor;
  String url;

  Item({this.name, this.type, this.bgColor, this.url});
}

List<Item> items = [
  Item(
      name: "Beauty Cream",
      type: "Dry Skin",
      bgColor: Colors.pink[100],
      url: "assets/images/2.png"),
  Item(
      name: "Beauty Cream",
      type: "Dry Skin",
      bgColor: Colors.pink[100],
      url: "assets/images/2.png"),
  Item(
      name: "Beauty Cream",
      type: "Dry Skin",
      bgColor: Colors.pink[100],
      url: "assets/images/2.png"),
];
