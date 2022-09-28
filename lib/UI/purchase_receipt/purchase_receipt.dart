import 'package:flutter/material.dart';
import 'package:food_e_vending_machine/bloc/moneycounter.dart';

class PurchaseReceipt extends StatelessWidget {
  PurchaseReceipt({Key? key, required this.totalbill, required this.totalmoney})
      : super(key: key);
  int totalbill, totalmoney;

  MoneyCounter firstcounter = MoneyCounter();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int moneyback = totalmoney - totalbill;
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffF1F5F9),
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              backgroundColor: const Color(0xffF1F5F9),
              elevation: 0,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_cart, color: Colors.black)),
              ],
            ),
            body: Center(
              child: Column(
                children: [
                  SizedBox(height: size.height * (50 / 677)),
                  Container(
                      height: size.height * (40 / 677),
                      width: size.width * (300 / 375),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: Text(
                          "Thank You for The Purchase!",
                          style: TextStyle(
                            fontSize: size.height * (20 / 677),
                          ),
                        ),
                      )),
                  SizedBox(height: size.height * (50 / 677)),
                  Image.asset(
                    "images/spoon.png",
                    height: size.height * (50 / 677),
                  ),
                  SizedBox(height: size.height * (50 / 677)),
                  Text("Total Bill : Rp. $totalbill"),
                  SizedBox(height: size.height * (10 / 677)),
                  Text("Total Money : Rp. $totalmoney"),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * (50 / 375)),
                    child: Divider(),
                  ),
                  Text("Leftover Money : Rp. $moneyback"),
                  SizedBox(
                    height: size.height * (50 / 677),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    child: Text("HOME", style: TextStyle(color: Colors.black)),
                    style: ElevatedButton.styleFrom(primary: Color(0xffDE8704)),
                  )
                ],
              ),
            )));
  }
}
