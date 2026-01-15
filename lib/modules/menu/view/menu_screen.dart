import 'package:bestelzuil/common/styles/button_style.dart';
import 'package:bestelzuil/modules/menu/model/file_reader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';
import 'package:provider/provider.dart';

import '../../../common/theme_tokens.dart';
import '../../../common/constants.dart';
import '../../../common/widgets/button_widget.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late FileReader _fileReader;

  @override
  void initState() {
    _fileReader = FileReader();
    _fileReader.init();
    super.initState();
  }

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
            Button(
              onPressed: _fileReader.test,
              style: buttonStyle(context),
              child: StyledText("test document and sdcardpath"),
            ),
          ],
        ),
      ),
    );
  }
}
