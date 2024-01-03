import 'package:flutter/material.dart';

class ARBottomSheetTheme {
  ARBottomSheetTheme._();

  //// --light
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    backgroundColor: Colors.white,
    modalBackgroundColor: Colors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );


  //// --dark
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    
    backgroundColor: Colors.black45,
    modalBackgroundColor: Colors.black45,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}
