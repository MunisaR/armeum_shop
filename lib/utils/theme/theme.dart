import 'package:armeum_shop/utils/theme/custom_themes/appbar_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/chip_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/text_field_theme.dart';
import 'package:armeum_shop/utils/theme/custom_themes/text_theme.dart';

import 'package:flutter/material.dart';

class ARAppTheme {
  ARAppTheme._();

  ///// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ARTextTheme.lightTextTheme,
    chipTheme: ARChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: ARAppBarTheme.lightAppBarTheme,
    checkboxTheme: ARCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ARBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ARElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: AROutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ARTextFieldTheme.lightInputDecorationTheme,

  );

  ///// Dark Theme
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      textTheme: ARTextTheme.darkTextTheme,
      chipTheme: ARChipTheme.darkChipTheme,
      scaffoldBackgroundColor: Colors.black45,
      appBarTheme: ARAppBarTheme.darkAppBarTheme,
      checkboxTheme: ARCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: ARBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: ARElevatedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: AROutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: ARTextFieldTheme.lightInputDecorationTheme,

  );
}