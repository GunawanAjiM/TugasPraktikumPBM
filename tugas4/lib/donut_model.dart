import 'package:flutter/material.dart';

class Donut {
  final String image;
  final String title;
  final double rating;
  final String topping;
  final String description;

  const Donut({
    required this.image,
    required this.title,
    required this.rating,
    required this.topping,
    required this.description,
  });
}

List<Donut> ListDonut = [
  Donut(
    image: "images/icecream.png",
    title: "Ice Cream Donut",
    rating: 4.9,
    topping: "Ice Cream Vanilla",
    description:
        "Donut dengan rasa dan topping ice cream ini adalah menu baru dan banyak disukai oleh masyarakat terutama anak kecil yg sangat suka dengan ice cream serta menggunakan rasa vanilla.",
  ),
  Donut(
      image: "images/grape.png",
      title: "Grape Donut",
      rating: 4.6,
      topping: "Grape jam and Slices",
      description:
          "Donut dengan rasa Anggur ini memiliki rasa yg manis serta aroma yg menggugah selera untuk para pecinta anggur."),
  Donut(
      image: "images/chocolate.png",
      title: "Chocolate Donut",
      rating: 4.2,
      topping: "Chocolate Sweet",
      description:
          "Donut dengan rasa coklat yg memiliki berbagai macam manfaat serta rasa yg manis dan lezat."),
  Donut(
      image: "images/strawberry.png",
      title: "Strawberry Donut",
      rating: 4.2,
      topping: "Strawberry jam",
      description:
          "Donut dengan rasa strawberry yg memiliki warna serta rasanya yg manis dan menyehatkan."),
];
