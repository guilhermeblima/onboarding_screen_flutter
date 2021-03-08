import 'package:efg_onboarding/screens/components/default_button.dart';
import 'package:efg_onboarding/size_config.dart';
import 'package:flutter/material.dart';

import '../../contstants.dart';
import 'body.dart';

class OnboardingContent extends StatefulWidget {
  @override
  _OnboardingContentState createState() => _OnboardingContentState();
}

class _OnboardingContentState extends State<OnboardingContent> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "headline": "Get inspired",
      "text":
          "Connecting you with brands' \nefforts to reduce exploitation \nin their supply chains.",
      "image": "assets/images/onboarding1.png"
    },
    {
      "headline": "Find your brands",
      "text":
          "When you buy from brands with good grades, \nyou're supporting fair working \nconditions and care for the planet.",
      "image": "assets/images/onboarding2.png"
    },
    {
      "headline": "Connect",
      "text":
          "Together, we can change a system \nof exploitation to one of \nfairness and sustainability.",
      "image": "assets/images/onboarding3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Body(
                  headline: splashData[index]["headline"],
                  text: splashData[index]["text"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(),
                      if (currentPage == 2)
                        DefaultButton(
                          text: "GET STARTED",
                          press: () {},
                        ),
                      Spacer(),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
