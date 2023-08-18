import 'package:flutter/material.dart';
import 'package:flutter_thitima/model/DetailModels.dart';

class ProductModels {
  String? img;
  int? rating;
  String? name;
  int? price;
  double? size;
  String? colors;
  List<Color> expand;

  ProductModels({
    this.img,
    this.name,
    this.price,
    this.rating,
    this.colors,
    this.size,
    required this.expand,
  });
}
