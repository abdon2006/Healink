import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_style.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    primaryColor: AppColors.primaryBlue,
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.font20DarkSemiBold,
      iconTheme: const IconThemeData(color: AppColors.textDark),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryBlue,
      secondary: AppColors.primaryGreen,
      surface: AppColors.surface,
      error: AppColors.error,
    ),
  );
}
