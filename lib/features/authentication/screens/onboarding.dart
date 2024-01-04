import 'package:armeum_shop/utils/constants/image_strings.dart';
import 'package:armeum_shop/utils/constants/sizes.dart';
import 'package:armeum_shop/utils/constants/text_strings.dart';
import 'package:armeum_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ////Horizontal Scrollable Pages
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    width: ARHelperFunctions.screenWidth() * 0.8,
                    height: ARHelperFunctions.screenHeight() * 0.6,
                    image: const AssetImage(
                      ARImages.onBoardingImage1,
                    ),
                  ),
                  Text(
                    ARTexts.onboardingtitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: ARSizes.spaceBtwItems),
                  Text(
                    ARTexts.onboardingtitle1,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
