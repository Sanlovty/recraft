import 'package:flutter/material.dart';
import 'package:mwwm/mwwm.dart';
import 'package:recraft/features/main/main_screen_widget_model.dart';

class MainScreen extends CoreMwwmWidget<MainScreenWidgetModel> {
  const MainScreen({Key? key})
      : super(
          key: key,
          widgetModelBuilder: createMainScreenWidgetModel,
        );

  @override
  WidgetState<MainScreen, MainScreenWidgetModel> createWidgetState() =>
      _MainScreenState();
}

class _MainScreenState extends WidgetState<MainScreen, MainScreenWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox.square(
        dimension: 100,
      ),
    );
  }
}
