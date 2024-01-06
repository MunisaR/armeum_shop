import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class ARSocialButtons extends StatelessWidget {
  const ARSocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ARColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ARSizes.iconMd,
              height: ARSizes.iconMd,
              image: AssetImage(ARImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: ARSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ARColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: ARSizes.iconMd,
              height: ARSizes.iconMd,
              image: AssetImage(ARImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
