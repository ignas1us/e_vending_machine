import 'package:flutter/material.dart';

class CardViewMenu extends StatelessWidget {
  final String image, title;
  final int price;

  const CardViewMenu({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * (160 / 677),
      width: size.height * (100 / 375),
      child: Column(
        children: [
          Container(
            height: size.height * (90 / 677),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * (10 / 677)),
                    topRight: Radius.circular(size.height * (10 / 677)))),
            child: Image.asset(image),
          ),
          SizedBox(
            height: size.height * (20 / 677),
          ),
          Text(title,
              style: TextStyle(
                  fontFamily: "Sniglet",
                  fontSize: size.height * (14 / 677),
                  fontWeight: FontWeight.bold)),
          Text(
            "Rp. ${price}",
            style: TextStyle(
                fontFamily: "Sniglet", fontSize: size.height * (12 / 677)),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color(0xffDE8704), offset: Offset(1, 1), blurRadius: 7)
          ],
          borderRadius: BorderRadius.circular(size.height * (10 / 677)),
          border: Border.all(color: Colors.grey.shade100)),
    );
  }
}
