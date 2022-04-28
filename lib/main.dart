import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recraft/di/app_dependency.dart';
import 'package:recraft/features/app/app.dart';

void main() async {
  final globalDeps = AppDependencies();
  await globalDeps.init();

  runApp(
    Provider(
      create: (ctx) => globalDeps,
      child: App(),
    ),
  );
}
