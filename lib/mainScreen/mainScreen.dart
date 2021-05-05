import 'package:beauty_essentials/detailsScreen/details_screen.dart';
import 'package:beauty_essentials/mainScreen/itemWidget.dart';
import 'package:beauty_essentials/mainScreen/littleitem.dart';
import 'package:beauty_essentials/model/item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/center-sd.svg"),
                    Icon(CupertinoIcons.ellipsis_vertical)
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: Text(
                  "Beauty Essentials",
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),
                    )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: defaultPadding),
                child: Text(
                  "Products of your choice",
                    style: GoogleFonts.aBeeZee(
                      textStyle: TextStyle(fontSize: 17),
                    )
                ),
              ),
              SizedBox(
                height: 30,
              ),
              BigItemWidget1(),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: LittleItemWidget(),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsScreen(Item(
                                  name: "Beauty Cream",
                                  type: "Dry Skin",
                                  bgColor: Colors.pink[100],
                                  url: "assets/images/2.png"),),
                            ));
                      },
                    ),
                    LittleItemWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
