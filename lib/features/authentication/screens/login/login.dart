import 'package:armeum_shop/common/styles/spacing_styles.dart';
import 'package:armeum_shop/common/widgets/login_signup/ARFormDivider.dart';
import 'package:armeum_shop/common/widgets/login_signup/ARSocialButtons.dart';
import 'package:armeum_shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:armeum_shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ARSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: const [
              ////Logo & Title & SubTitle
              ARLoginHeader(),

              /// Form
              ARLoginForm(),

              /// Divider
              ARFormDivider(),

              SizedBox(
                height: ARSizes.spaceBtwItems,
              ),

              ///Footer
              ARSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
