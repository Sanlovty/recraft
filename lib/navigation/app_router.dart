import 'package:flutter/material.dart';
import 'package:recraft/features/main/main_screen_route.dart';

/// Класс, в котором описывается навигацию в приложении
class AppRouter {
  static const initialRoute = '/';

  static final Map<String, Route Function(Object?)> routes = {
    initialRoute: (_) => MainScreenRoute(),
  };
}
