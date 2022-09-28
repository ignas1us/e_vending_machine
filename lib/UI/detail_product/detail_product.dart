import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_e_vending_machine/UI/money_view/money_view.dart';
import 'package:food_e_vending_machine/bloc/counter.dart';
import 'package:food_e_vending_machine/model/model.dart';
import 'package:food_e_vending_machine/widgets/ratings.dart';

class DetailProduct extends StatelessWidget {
  DetailProduct({Key? key, required this.products}) : super(key: key);
  final Product products;

  CounterBloc mycounter = CounterBloc();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFCD83),
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          ],
        ),
        backgroundColor: Color(0xffFFCD83),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.3),
              child: Container(
                  padding: EdgeInsets.all(size.height * (20 / 677)),
                  height: size.height * (2 / 3),
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF1F5F9),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(size.height * (20 / 677)),
                          topRight: Radius.circular(size.height * (20 / 677)))),
                  child: BlocBuilder<CounterBloc, int>(
                    bloc: mycounter,
                    builder: (context, state) {
                      int total = state * products.price;
                      return Column(
                        children: [
                          SizedBox(height: size.height * (25 / 677)),
                          Ratings(size: size),
                          SizedBox(height: size.height * (10 / 677)),
                          Text(
                            "Description : \n${products.description}",
                            style: TextStyle(
                              fontFamily: "Sniglet",
                              fontSize: size.height * (12 / 677),
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: size.height * (25 / 677)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                  onPressed: () {
                                    if (state <= 0) {
                                      mycounter.showtoastamount();
                                    } else {
                                      mycounter.decrement();
                                    }
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    color: Color(0xffDE8704),
                                  )),
                              SizedBox(width: size.width * (10 / 375)),
                              Text(
                                "${state}",
                                style: TextStyle(
                                    fontSize: size.height * (20 / 677),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: size.width * (10 / 375)),
                              OutlinedButton(
                                  onPressed: () {
                                    mycounter.increment();
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: const Color(0xffDE8704),
                                  )),
                            ],
                          ),
                          SizedBox(width: size.width * (25 / 375)),
                          SizedBox(height: size.height * (25 / 677)),
                          Text("Total : Rp. ${total}"),
                          SizedBox(height: size.height * (15 / 677)),
                          ElevatedButton(
                            onPressed: () {
                              if (state == 0) {
                                mycounter.showtoastitems();
                              } else {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MoneyView(
                                          products: products,
                                          total: total,
                                        )));
                              }
                            },
                            child: Text("Buy Now"),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xffDE8704)),
                          )
                        ],
                      );
                    },
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * (10 / 677)),
                  Text(products.title,
                      style: TextStyle(
                          fontFamily: "Sniglet",
                          fontSize: size.height * (18 / 677),
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: size.height * (110 / 677)),
                  Text(
                    "Price",
                    style: TextStyle(
                      fontSize: size.height * (12 / 677),
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Rp. ${products.price}",
                    style: TextStyle(
                        fontFamily: "Sniglet",
                        fontSize: size.height * (18 / 677),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * (10 / 677)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * (120 / 375),
                  top: size.height * (50 / 677)),
              child: Image.asset(products.image,
                  height: size.height * (200 / 677)),
            ),
          ],
        ),
      ),
    );
  }
}
