import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healink/core/app/app_colors.dart';
import 'package:hugeicons/hugeicons.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(32.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.border.withValues(alpha: 0.8),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem(0, HugeIcons.strokeRoundedHome01, 'Home'),
          _buildNavItem(1, HugeIcons.strokeRoundedCalendar01, 'Schedule'),
          _buildNavItem(2, HugeIcons.strokeRoundedChat, 'Chats'),
          _buildNavItem(3, HugeIcons.strokeRoundedProfile, 'Profile'),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, List<List<dynamic>> icon, String label) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryBlue : Colors.transparent,
          borderRadius: BorderRadius.circular(24.r),
        ),
        child: Row(
          children: [
            HugeIcon(
              icon: icon,
              color: isSelected ? AppColors.surface : AppColors.textMuted,
              size: 24.sp,
            ),
            if (isSelected) ...[
              SizedBox(width: 8.w),
              Text(
                label,
                style: TextStyle(
                  color: AppColors.surface,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
