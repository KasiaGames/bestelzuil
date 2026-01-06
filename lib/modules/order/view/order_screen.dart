import 'package:bestelzuil/common/styles/button_style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:provider/provider.dart';

import '../../../common/theme_tokens.dart';
import '../../../common/constants.dart';
import '../../../common/widgets/button_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle h1style = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Constants.textSize(context, h1Font.resolve(context)),
      color: onBackgroundColor.resolve(context),
    );

    // Simple order page with text
    return Scaffold(
      backgroundColor: backgroundColor.resolve(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // The text
            Text(
              "Selecteer producten",
              style: h1style,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
