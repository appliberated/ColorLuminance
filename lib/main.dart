import 'package:colorluminance/screens/home.dart';
import 'package:colorluminance/screens/named_colors.dart';
import 'package:flutter/material.dart';

import 'common/strings.dart';

void main() => runApp(ColorLuminanceApp());

class ColorLuminanceApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppStrings.routeHome,
      routes: {
        AppStrings.routeHome: (context) => HomeScreen(),
        AppStrings.routeWeb: (context) => NamedColorsScreen(),
      },
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
