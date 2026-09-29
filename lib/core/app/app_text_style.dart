import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle get font24BlueBold => GoogleFonts.montserrat(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryBlue,
  );

  static TextStyle get font20DarkSemiBold => GoogleFonts.montserrat(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );

  static TextStyle get font18DarkMedium => GoogleFonts.montserrat(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.textDark,
  );

  static TextStyle get font16DarkRegular => GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textDark,
  );

  static TextStyle get font14MutedRegular => GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted,
  );

  static TextStyle get font12MutedRegular => GoogleFonts.montserrat(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.textMuted,
  );

  static TextStyle get font16WhiteMedium => GoogleFonts.montserrat(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.surface,
  );
}
