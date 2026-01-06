import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:provider/provider.dart';
import '../constants.dart';
import '../theme_tokens.dart';

Style buttonStyle(BuildContext context) {
  double textSize = Constants.textSize(context, buttonFont.resolve(context));
  double buttonHeight = textSize * 1.8;

  return Style(
    // Colors
    $box.color(buttonColor.resolve(context)),
    $on.press($box.color(onButtonColor.resolve(context))),
    // Size and shape
    $box.height(buttonHeight),
    $box.margin(0, 0),
    $box.alignment.center(),
    // Radius are weird an only work with <radius size>.resolve(context).x
    // Dont forget the x
    $box.borderRadius(smallRadius.resolve(context).x),
    // Text
    $text.style.color(onButtonColor.resolve(context)),
    $text.style.fontSize(textSize),
    $text.style.fontWeight(
      buttonFont.resolve(context).fontWeight ?? FontWeight.normal,
    ),
  );
}
