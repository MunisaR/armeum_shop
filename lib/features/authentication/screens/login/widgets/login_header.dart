import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class ARLoginHeader extends StatelessWidget {
  const ARLoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = ARHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image:
              AssetImage(dark ? ARImages.lightAppLogo : ARImages.darkAppLogo),
        ),
        Text(
          ARTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: ARSizes.sm),
        Text(
          ARTexts.loginSubTitle,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
