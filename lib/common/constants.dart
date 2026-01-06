import 'package:flutter/material.dart';

/// A utility class that provides constant values and measurement functions.
class Constants {
  /// Converts centimeters (cm) to device pixels based on the device's pixel ratio.
  ///
  /// [context] The build context used to access device metrics.
  ///
  /// Returns the equivalent size in pixels for 1 centimeter.
  static double cm(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio * 62.99212598;
  }

  /// Calculates the height available for the main content area of the app.
  ///
  /// Considers device height, top and bottom padding (like notch or navigation bar),
  /// and subtracts app bar height.
  ///
  /// [context] The build context used to access device metrics.
  ///
  /// Returns the height in pixels available for app content.
  static double appBodyHeight(BuildContext context) {
    return MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom -
        56;
  }

  /// Retrieves the width available for the main content area of the app.
  ///
  /// [context] The build context used to access device metrics.
  ///
  /// Returns the width in pixels available for app content.
  static double appBodyWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Calculates the text size in pixels based on the device's pixel ratio and font size.
  ///
  /// [context] The build context used to access device metrics.
  /// [textStyle] The [TextStyle] containing the font size in cm.
  ///
  /// Returns the scaled text size in pixels.
  static double textSize(BuildContext context, TextStyle textStyle) {
    return Constants.cm(context) * (textStyle.fontSize ?? 1);
  }
}
