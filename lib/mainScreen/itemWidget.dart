import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BigItemWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
              Transform.rotate(
                  angle: 3.14 / 0.55,
                  child: Image.asset(
                    "assets/images/2.png",
                    height: 290,
                    width: 290,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Beauty Cream",
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(letterSpacing: .5, fontSize: 17,fontWeight: FontWeight.bold),
              )
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Dry Skin",
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(letterSpacing: .5, fontSize: 14),
              )
          )
        ],
      ),
    );
  }
}
