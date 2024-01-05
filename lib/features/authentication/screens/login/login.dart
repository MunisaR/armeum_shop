import 'package:armeum_shop/common/styles/spacing_styles.dart';
import 'package:armeum_shop/utils/constants/colors.dart';
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: ARSizes.spaceBtwSections),
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

                      ////Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ///Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(ARTexts.rememberMe),
                            ],
                          ),

                          ///Forget Password
                          TextButton(
                              onPressed: () {},
                              child: const Text(ARTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(
                        height: ARSizes.spaceBtwSections,
                      ),

                      ////Sign in button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(ARTexts.signIn)),
                      ),
                      const SizedBox(
                        height: ARSizes.spaceBtwItems,
                      ),

                      ////Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text(ARTexts.createAccount)),
                      ),

                      const SizedBox(
                        height: ARSizes.spaceBtwSections,
                      )
                    ],
                  ),
                ),
              ),

              /// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? ARColors.darkGrey : ARColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(
                    ARTexts.orSignInWith,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                      child: Divider(
                    color: dark ? ARColors.darkGrey : ARColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  )),
                ],
              ),

              ///Footer
              Row(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
