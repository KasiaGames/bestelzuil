import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:provider/provider.dart';

import '../../../common/theme_tokens.dart';
import '../../../common/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle h1style = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: Constants.textSize(context, h1Font.resolve(context)),
      color: onBackgroundColor.resolve(context),
    );

    // Simple start page with text, an image and a button
    return Scaffold(
      backgroundColor: backgroundColor.resolve(context),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // The text
            Text("Bestel hier", style: h1style, textAlign: TextAlign.center),
            // The image
            Image(
              image: const AssetImage('assets/common/images/other/logo.png'),
              width: Constants.appBodyWidth(context),
              height: Constants.appBodyWidth(context),
            ),
            // The button
          ],
        ),
      ),
    );
  }
}
