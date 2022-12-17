import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({ //Usei required
    required this.image, 
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.color,
    required this.id,
  });
}

dummyText() => dummyText;
List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork1.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork2.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork3.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork4.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork5.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork6.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork7.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText(),
      image: "assets/images/BlackWork8.jpg",
      color: Color(0xFF3D82AE)),
];
