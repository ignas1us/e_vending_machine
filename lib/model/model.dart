import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "images/chips.png",
    title: "Chips",
    description:
        "a thin slice of potato that has been either deep fried, baked, or air fried until crunchy. They are commonly served as a snack, side dish, or appetizer. The basic chips are cooked and salted; additional varieties are manufactured using various flavorings and ingredients including herbs, spices, cheeses, other natural flavors, artificial flavors, and additives.",
    price: 8000,
  ),
  Product(
      id: 2,
      image: "images/wafers.png",
      title: "Wafers",
      description:
          "a crisp, often sweet, very thin, flat, light and dry biscuit, often used to decorate ice cream, and also used as a garnish on some sweet dishes.",
      price: 7000),
  Product(
      id: 3,
      image: "images/chocolate_bars.png",
      title: "Chocolate Bars",
      description:
          "a confection containing chocolate, which may also contain layerings or mixtures that include nuts, fruit, caramel, nougat, and wafers. A flat, easily breakable, chocolate bar is also called a tablet. A wide variety of chocolate bar brands are sold. A popular example is a Snickers bar, which consists of nougat mixed with caramel and peanuts, covered in milk chocolate.",
      price: 12000)
];
