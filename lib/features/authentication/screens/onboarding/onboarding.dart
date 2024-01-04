import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:armeum_shop/utils/constants/image_strings.dart';
import 'package:armeum_shop/utils/constants/sizes.dart';
import 'package:armeum_shop/utils/constants/text_strings.dart';
import 'package:armeum_shop/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ////Horizontal Scrollable Pages
          PageView(
            children: const [
              OnBoardingPage(
                image: ARImages.onBoardingImage1,
                title: ARTexts.onboardingtitle1,
                subTitle: ARTexts.onboardingsubtitle1,
              ),
              OnBoardingPage(
                image: ARImages.onBoardingImage2,
                title: ARTexts.onboardingtitle2,
                subTitle: ARTexts.onboardingsubtitle2,
              ),
              OnBoardingPage(
                image: ARImages.onBoardingImage3,
                title: ARTexts.onboardingtitle3,
                subTitle: ARTexts.onboardingsubtitle3,
              )
            ],
          ),

          ////Skip button
          const OnBoardingSkip(),

          ////Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //// Circular button
          Positioned(
            right: ARSizes.defaultSpace,
            bottom: ARDeviceUtils.getBottomNavigationBarHeight(),
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Iconsax.arrow_right_3),
            ),
          )
        ],
      ),
    );
  }
}
