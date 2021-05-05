import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LittleItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                shape: BoxShape.circle,
              ),
            ),
            Transform.rotate(
                angle: 3.14 / 0.55,
                child: Image.asset(
                  "assets/images/2.png",
                  height: 190,
                  width: 190,
                  fit: BoxFit.cover,
                )),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Text("Beauty Cream",
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(letterSpacing: .5, fontSize: 14),
            )),
        SizedBox(
          height: 5,
        ),
        Text(
          "Dry Skin",
            style: GoogleFonts.aBeeZee(
              textStyle: TextStyle(letterSpacing: .5, fontSize: 11),
            )
        )
      ],
    );
  }
}
