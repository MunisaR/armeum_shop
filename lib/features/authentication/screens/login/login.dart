import 'package:armeum_shop/common/styles/spacing_styles.dart';
import 'package:armeum_shop/utils/constants/image_strings.dart';
import 'package:armeum_shop/utils/constants/text_strings.dart';
import 'package:armeum_shop/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = ARHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ARSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ////Logo & Title & SubTitle
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? ARImages.lightAppLogo : ARImages.darkAppLogo),
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
              ),

              /// Form
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.direct_right),
                        labelText: ARTexts.email),
                  ),
                  const SizedBox(
                    height: ARSizes.spaceBtwInputFields,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: ARTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(
                    height: ARSizes.spaceBtwInputFields / 2,
                  ),

                  /////
                  ////Remember Me & Forget Password


                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}