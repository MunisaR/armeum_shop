import 'package:armeum_shop/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = ARHelperFunctions.isDarkMode(context);

    return Positioned(
      right: ARSizes.defaultSpace,
      bottom: ARDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? ARColors.lightSecondary : ARColors.accent),
        child: Icon(
          Iconsax.arrow_right_3,
          color: dark ? ARColors.accent : ARColors.lightSecondary,
        ),
      ),
    );
  }
}