import 'package:flutter/material.dart';
import 'package:food_e_vending_machine/UI/detail_product/detail_product.dart';
import 'package:food_e_vending_machine/model/model.dart';
import 'package:food_e_vending_machine/widgets/card_view_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "E-VENDING MACHINE",
            style: TextStyle(
                fontFamily: "Sniglet",
                color: Colors.black,
                fontSize: size.height * (16 / 677)),
          ),
          backgroundColor: Color(0xffF1F5F9),
          centerTitle: true,
        ),
        backgroundColor: Color(0xffF1F5F9),
        body: Padding(
              padding:  EdgeInsets.only(left: size.width*(10/677), right: size.width*(10/677),),
          child: Column(
            children: [
              SizedBox(
                height: size.height * (15 / 677),
              ),
              Text(
                "Menu",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size.height * (24 / 677),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: size.height * (15 / 677),
              ),
              GridView.builder(
                  itemCount: products.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailProduct(
                                    products: products[index],
                                  )));
                        },
                        child: Center(
                          child: CardViewMenu(
                              image: products[index].image,
                              title: products[index].title,
                              price: products[index].price),
                        ),
                      )),
              SizedBox(
                height: size.height * (50 / 677),
              ),
              Text(
                "Test Case for Mobile Flutter Developer\nPT. Infra Solusi Indonesia\nby Ignasius Santoni M Rajagukguk",
                style: TextStyle(
                    fontFamily: "Sniglet",
                    color: Colors.grey,
                    fontSize: size.height * (11 / 677)),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
