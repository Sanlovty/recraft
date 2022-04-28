import 'package:flutter/material.dart';
import 'package:recraft/core/ui/assets/colors/app_colors.dart';

/// Класс, в котором описывается тема приложения
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Montserrat',
      colorScheme: WtgtColorScheme.lightColorScheme,
      primaryColorDark: AppColors.primaryDark,
      shadowColor: AppColors.shadow,
      dividerColor: AppColors.divider,
      disabledColor: AppColors.disabled,
      backgroundColor: AppColors.background,
      cardColor: AppColors.card,
      cardTheme: const CardTheme(
        color: AppColors.card,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.focusedBorder,
      ),
    );
  }
}

class WtgtColorScheme {
  static ColorScheme get lightColorScheme => const ColorScheme(
        primaryContainer: AppColors.primary,
        secondaryContainer: AppColors.secondary,
        primary: AppColors.primary,
        surface: AppColors.surface,
        secondary: AppColors.secondary,
        background: AppColors.background,
        onPrimary: AppColors.onPrimary,
        onSurface: AppColors.onSurface,
        onBackground: AppColors.onBackground,
        onSecondary: AppColors.onSecondary,
        error: AppColors.error,
        onError: AppColors.onError,
        brightness: Brightness.light,
      );
}
