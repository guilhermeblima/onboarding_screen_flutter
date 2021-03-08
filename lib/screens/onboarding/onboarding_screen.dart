import 'package:efg_onboarding/size_config.dart';
import 'package:flutter/material.dart';
import 'onboarding_content.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF951b81)),
        child: OnboardingContent(),
      ),
    );
  }
}
