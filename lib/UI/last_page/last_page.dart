import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_e_vending_machine/UI/purchase_receipt/purchase_receipt.dart';
import 'package:food_e_vending_machine/bloc/moneycounter.dart';
import 'package:food_e_vending_machine/model/model.dart';
import 'package:food_e_vending_machine/widgets/money_widget.dart';

class LastPage extends StatelessWidget {
  LastPage(
      {Key? key,
      required this.amount,
      required this.total,
      required this.products})
      : super(key: key);
  int amount, total;
  final Product products;

  MoneyCounter firstcounter = MoneyCounter();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          body: BlocBuilder<MoneyCounter, int>(
              bloc: firstcounter,
              builder: (context, state) {
                int totalmoney = state * amount;
                return Stack(
                  children: [
                    Center(
                        child: Container(
                      height: size.height * (500 / 677),
                      width: size.width * (300 / 375),
                      child:
                          Image.asset("images/foodbg.png", fit: BoxFit.cover),
                    )),
                    Center(
                      child: Container(
                        height: size.height * (500 / 677),
                        width: size.width * (300 / 375),
                        decoration:
                            BoxDecoration(color: Colors.white.withOpacity(0.9)),
                        child: Column(
                          children: [
                            SizedBox(height: size.height * (50 / 677)),
                            MoneyWidget(
                              size: size,
                              amount: "$amount",
                            ),
                            SizedBox(height: size.height * (50 / 677)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton.small(
                                    heroTag: null,
                                    onPressed: () {
                                      if (state <= 0) {
                                        print("0");
                                        // print("0");
                                      } else {
                                        firstcounter.decrement();
                                      }
                                    },
                                    backgroundColor:
                                        Colors.white.withOpacity(0.5),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xffDE8704),
                                    )),
                                SizedBox(width: size.width * (10 / 375)),
                                Text(
                                  "$state",
                                  style: TextStyle(
                                      fontFamily: "Sniglet",
                                      fontSize: size.height * (20 / 677),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: size.width * (10 / 375)),
                                FloatingActionButton.small(
                                    heroTag: null,
                                    onPressed: () {
                                      print("coba");
                                      firstcounter.increment();
                                    },
                                    backgroundColor:
                                        Colors.white.withOpacity(0.5),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xffDE8704),
                                    ))
                              ],
                            ),
                            SizedBox(height: size.height * (50 / 677)),
                            Text(
                              "Total Money Rp. $totalmoney",
                              style: TextStyle(
                                fontFamily: "Sniglet",
                                fontSize: size.height * (12 / 677),
                              ),
                            ),
                            SizedBox(height: size.height * (10 / 677)),
                            Text(
                              "Total Bill Rp. $total",
                              style: TextStyle(
                                fontFamily: "Sniglet",
                                fontSize: size.height * (12 / 677),
                              ),
                            ),
                            SizedBox(
                              height: size.height * (10 / 677),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if ((totalmoney - total) < 0) {
                                  print("The amount of money is not enough");
                                  firstcounter.showtoastmuchMoney();
                                } else {
                                  // firstcounter.showtoastpurchase();
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => PurchaseReceipt(
                                          totalbill: total,
                                          totalmoney: totalmoney)));
                                }
                              },
                              child: Text("Check Out"),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xffDE8704)),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: size.height * (30 / 677),
                          left: size.width * (20 / 375)),
                      child: Image.asset(
                        products.image,
                        height: size.height * (80 / 677),
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
