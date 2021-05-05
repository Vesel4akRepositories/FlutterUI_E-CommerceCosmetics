import 'package:beauty_essentials/model/item.dart';
import 'package:beauty_essentials/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductInfo extends StatefulWidget {
  Item product;

  ProductInfo(this.product);

  @override
  _ProductInfoState createState() => _ProductInfoState();
}

class _ProductInfoState extends State<ProductInfo> {
  @override
  Widget build(BuildContext context) {
    Item product = widget.product;
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    TextStyle lightTextStyle = TextStyle(color: Colors.grey);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      width: defaultSize *
          (SizeConfig.orientation == Orientation.landscape ? 35 : 20), //15.0
      // color: Colors.black45,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Text(
              product.name,
              style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Common Description",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Staring from",
              style: GoogleFonts.aBeeZee(
            textStyle: TextStyle(letterSpacing: .5, fontSize: 17),
      ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "20\$",
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(letterSpacing: .5, fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Promotional Price",
              style: GoogleFonts.aBeeZee(
                  textStyle: TextStyle(letterSpacing: .5, fontSize: 17)
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
                  padding: MaterialStateProperty.resolveWith<EdgeInsets>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return EdgeInsets.symmetric(
                            horizontal: 24, vertical: 10);
                      return EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 12); // Use the component's default.
                    },
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.black;
                      return Colors.black; // Use the component's default.
                    },
                  ),
                  textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return TextStyle();
                      return TextStyle(
                          color: Colors.white); // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {},
                child: Text("Shop Now"))
          ],
        ),
      ),
    );
  }
}
