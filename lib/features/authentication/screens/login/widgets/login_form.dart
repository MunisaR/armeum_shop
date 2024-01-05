import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class ARLoginForm extends StatelessWidget {
  const ARLoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: ARSizes.spaceBtwSections),
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
                  onPressed: () {}, child: const Text(ARTexts.signIn)),
            ),
            const SizedBox(
              height: ARSizes.spaceBtwItems,
            ),

            ////Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {}, child: const Text(ARTexts.createAccount)),
            ),

            const SizedBox(
              height: ARSizes.spaceBtwSections,
            )
          ],
        ),
      ),
    );
  }
}
