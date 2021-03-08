import 'package:efg_onboarding/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final String headline, text, image;

  const Body({Key key, this.headline, this.text, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        SizedBox(),
        Text(
          headline,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Nunito",
            fontWeight: FontWeight.bold,
            fontSize: getProportionateScreenWidth(36),
          ),
        ),
        Spacer(),
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Nunito",
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
