import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tase/constance/themes.dart';
import 'package:tase/splashscreen/splashscreen.dart';

import 'home/homeScreen.dart';
import 'introduction/introductionScree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static setCustomeTheme(BuildContext context, int index) {
    final _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
    state.setCustomeTheme(index);
  }

  // static setCustomeLanguage(BuildContext context, String languageCode) {
  //   final _MyAppState state = context.findAncestorStateOfType<_MyAppState>();
  //   state.setLanguage(languageCode);
  // }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setCustomeTheme(int index) {
    if (index == 6) {
      setState(() {
        AppTheme.isLightTheme = true;
      });
    } else if (index == 7) {
      setState(() {
        AppTheme.isLightTheme = false;
      });
    }
    //  else {
    //   setState(() {
    //     constance.colorsIndex = index;
    //     constance.primaryColorString =
    //         ConstanceData().colors[constance.colorsIndex];
    //     constance.secondaryColorString = constance.primaryColorString;
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: AppTheme.getTheme().primaryColor,
      systemNavigationBarDividerColor: AppTheme.getTheme().disabledColor,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.getTheme(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }

  var routes = <String, WidgetBuilder>{
    Routes.SPLASH: (BuildContext context) => SplashScreen(),
    Routes.Home: (BuildContext context) => Homescreen(),
    Routes.Introduction: (BuildContext context) => Introductionscreen(),
  };
}

class Routes {
  static const String SPLASH = "/";
  static const String Home = "/home/homescreen";
  static const String Introduction = "/introduction/introductionScree";
}
