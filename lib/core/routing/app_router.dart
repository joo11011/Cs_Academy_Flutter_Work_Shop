import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goldy/core/presentation/home_screen.dart';
import 'package:goldy/core/routing/routes.dart';

class AppRouter {
  Route GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
