import '../common/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import 'modules/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Sets the theme and goes to the startpage
  @override
  Widget build(BuildContext context) {
    return MixTheme(
      data: defaultTheme,
      child: MaterialApp(
        title: 'Aeki Bestelzuil',
        initialRoute: '/homepage',
        routes: {'/homepage': (context) => const HomeScreen()},
      ),
    );
  }
}
