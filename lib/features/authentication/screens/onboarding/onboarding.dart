import 'package:armeum_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:armeum_shop/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:armeum_shop/utils/constants/image_strings.dart';
import 'package:armeum_shop/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ////Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
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
          const OnboardingNextButton()
        ],
      ),
    );
  }
}
