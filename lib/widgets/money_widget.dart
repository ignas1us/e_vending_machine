import 'package:flutter/material.dart';

class MoneyWidget extends StatelessWidget {
  MoneyWidget({Key? key, required this.size, required this.amount})
      : super(key: key);
  String amount;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * (10 / 677)),
      child: Container(
          height: size.height * (40 / 677),
          width: size.width * (120 / 375),
          decoration: BoxDecoration(
            color: Color(0xffFFE3B8),
            boxShadow: [
              BoxShadow(
                  color: Color(0xffDE8704), offset: Offset(1, 1), blurRadius: 7)
            ],
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black),
          ),
          child: Center(
            child: Text(
              "Rp. $amount",
              style: TextStyle(
                fontSize: size.height * (20 / 677),
              ),
            ),
          )),
    );
  }
}
