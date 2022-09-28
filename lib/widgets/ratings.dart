import 'package:flutter/material.dart';
class Ratings extends StatelessWidget {
  const Ratings({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("images/star_gold.png", height: size.height*(20/677),),
        Image.asset("images/star_gold.png", height: size.height*(20/677),),
        Image.asset("images/star_gold.png", height: size.height*(20/677),),
        Image.asset("images/star_gold.png", height: size.height*(20/677),),
        Image.asset("images/star.png", height: size.height*(20/677),),
        Text("(4.0)", style: TextStyle(fontSize: size.height*(14/677), color: Colors.grey.shade600),)
      ],
    );
  }
}