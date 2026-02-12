import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goldy/core/presentation/home_screen.dart';
import 'package:goldy/core/routing/routes.dart';
import 'package:goldy/feature/Gold/presentation/screens/gold_screen.dart';
import 'package:goldy/feature/Silver/presentation/screens/silver_screen.dart';

class AppRouter {
  Route GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case AppRoutes.gold:
        return MaterialPageRoute(builder: (context) => GoldScreen());

      case AppRoutes.silver:
        return MaterialPageRoute(builder: (context) => SilverScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
