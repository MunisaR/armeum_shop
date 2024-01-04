import 'package:armeum_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:armeum_shop/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ARAppTheme.lightTheme,
      darkTheme: ARAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}