import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: ARDeviceUtils.getAppBarHeight(),
      right: ARSizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: Text("Skip", style: Theme.of(context).textTheme.headlineSmall),
      ),
    );
  }
}
