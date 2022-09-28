import 'package:flutter/material.dart';
import 'package:food_e_vending_machine/UI/last_page/last_page.dart';
import 'package:food_e_vending_machine/bloc/moneycounter.dart';
import 'package:food_e_vending_machine/model/model.dart';
import 'package:food_e_vending_machine/widgets/money_widget.dart';

class MoneyView extends StatelessWidget {
  MoneyView({Key? key, required this.products, required this.total})
      : super(key: key);
  final Product products;
  int total;
  MoneyCounter moneycounter = MoneyCounter();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF1F5F9),
        appBar: AppBar(
          backgroundColor: Color(0xffF1F5F9),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                )),
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Center(child: Image.asset(products.image)),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: size.height * (100 / 677)),
                    child: Container(
                      padding: EdgeInsets.all(size.height * (20 / 677)),
                      height: size.height * (400 / 677),
                      width: size.width * (300 / 375),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius:
                              BorderRadius.circular(size.height * (30 / 677))),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                                child: Text(
                              "Choose the Amount\nof The Money",
                              style: TextStyle(
                                  fontFamily: "Sniglet",
                                  fontSize: size.height * (15 / 677),
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            )),
                            SizedBox(
                              height: size.height * (20 / 677),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) => LastPage(
                                                      amount: 5000,
                                                      total: total,
                                                      products: products,
                                                    )));
                                      },
                                      child: MoneyWidget(
                                        size: size,
                                        amount: "5000",
                                      )),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => LastPage(
                                                  amount: 10000,
                                                  total: total,
                                                  products: products)));
                                    },
                                    child: MoneyWidget(
                                      size: size,
                                      amount: "10000",
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => LastPage(
                                                  amount: 50000,
                                                  total: total,
                                                  products: products)));
                                    },
                                    child: MoneyWidget(
                                      size: size,
                                      amount: "50000",
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => LastPage(
                                                  amount: 100000,
                                                  total: total,
                                                  products: products)));
                                    },
                                    child: MoneyWidget(
                                      size: size,
                                      amount: "100000",
                                    ),
                                  ),
                                  SizedBox(height: size.height * (50 / 677)),
                                  Text(
                                    "Total Bill : Rp. $total",
                                    style: TextStyle(
                                        fontFamily: "Sniglet",
                                        fontSize: size.height * (12 / 677)),
                                  )
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
