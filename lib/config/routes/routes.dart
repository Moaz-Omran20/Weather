import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/components.dart';
import 'package:weather_app/features/screens/search_screen/search_screen.dart';
import 'package:weather_app/features/screens/splash_screen/splash_screen.dart';

import '../../features/screens/home_screen/home_screen.dart';

class Routes {
  static const String splashScreen = "/";
  static const String searchScreen = "searchScreen";
}

class AppRoutes {
  static Route onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => SplashScreen(),
        );
      case Routes.searchScreen:
        return MaterialPageRoute(
          builder: (context) => SearchScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => UndefinedRoute(),
        );
    }
  }
}
