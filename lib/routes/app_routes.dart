// lib/routes/app_routes.dart
import 'package:flutter/material.dart';
import 'package:stridehub/features/auth/screens/login.dart';
import 'package:stridehub/features/auth/screens/signup.dart';
import 'package:stridehub/bottom_nav_bar.dart';

class AppRoutes {
  static const String login = '/';
  static const String signup = '/signup';
  static const String home = '/home';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => SignupPage());
      case home:
        return MaterialPageRoute(builder: (_) => BottomNavScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}