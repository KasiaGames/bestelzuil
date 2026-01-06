import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import 'modules/order/view/order_screen.dart';
import '../common/default_theme.dart';
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
        initialRoute: '/home_screen',
        routes: {
          '/home_screen': (context) => const HomeScreen(),
          '/order_screen': (context) => const OrderScreen(),
        },
      ),
    );
  }
}
