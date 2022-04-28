import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mwwm/mwwm.dart';
import 'package:recraft/core/ui/assets/theme/app_theme.dart';
import 'package:recraft/features/app/app_widget_model.dart';
import 'package:recraft/navigation/app_router.dart';

/// Виджет приложения
class App extends CoreMwwmWidget<AppWidgetModel> {
  App({Key? key})
      : super(
          key: key,
          widgetModelBuilder: (_) => AppWidgetModel(),
        );

  @override
  WidgetState<App, AppWidgetModel> createWidgetState() => _AppState();
}

class _AppState extends WidgetState<App, AppWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      initialRoute: AppRouter.initialRoute,
      onGenerateRoute: (routeSettings) =>
          AppRouter.routes[routeSettings.name]!(routeSettings.arguments),
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
        Locale('ru', ''), // Russia, no country code
        Locale('RU', ''), // Russia, no country code
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
    );
  }
}
