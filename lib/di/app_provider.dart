import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:recraft/di/app_dependency.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (ctx) => AppDependencies(),
      child: child,
    );
  }
}
