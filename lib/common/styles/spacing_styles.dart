import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class ARSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: ARSizes.appBarHeight,
    left: ARSizes.defaultSpace,
    bottom: ARSizes.defaultSpace,
    right: ARSizes.defaultSpace
  );
}