import 'package:beauty_essentials/constants.dart';
import 'package:beauty_essentials/detailsScreen/product_info.dart';
import 'package:beauty_essentials/mainScreen/littleitem.dart';
import 'package:beauty_essentials/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatefulWidget {
  Item product;

  DetailsScreen(this.product);

  @override
  _DetailsScreenState createState() => _DetailsScreenState(product);
}

class _DetailsScreenState extends State<DetailsScreen> {
  Item product;

  _DetailsScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    print(product.name);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                    right: 0,
                    top: 0,
                    child: SizedBox(
                      height: 500,
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 249, 242, 236),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(30))),
                                width: 200,
                                height: 340,
                              ),
                            ],
                          ),
                          Positioned(
                            top: 110,
                            child: Image.asset(
                              "assets/images/2.png",
                              height: 390,
                              width: 190,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(CupertinoIcons.arrow_left)),
                      Icon(CupertinoIcons.shopping_cart),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ProductInfo(product),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Suggested Products",
                style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(
                      letterSpacing: .5,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Recommended Products for all skin type",
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(letterSpacing: .5, fontSize: 11),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/1.png",
                  height: 170,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/1.png",
                  height: 170,
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/1.png",
                  height: 170,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
