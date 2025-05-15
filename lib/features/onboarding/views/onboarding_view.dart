import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:theme_app/core/routing/app_routes.dart';
import 'package:theme_app/core/theming/app_assets.dart';
import 'package:theme_app/core/theming/app_colors.dart';
import 'package:theme_app/core/theming/app_styles.dart';
import 'package:theme_app/core/widgets/custom_btn.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(Assets.imagesOnboarding1, fit: BoxFit.cover),
          ),
          Positioned.fill(
            top: 50.h,
            left: 20.w,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: 'FOOD-', style: AppStyles.textStyle),
                  TextSpan(
                    text: 'E',
                    style: AppStyles.textStyle.copyWith(
                      color: AppColors.lightgreen,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 500.h,
            left: 20.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'awesome\n', style: AppStyles.textStyle),
                      TextSpan(text: 'local ', style: AppStyles.greenTextStyle),
                      TextSpan(
                        text: 'food',
                        style: AppStyles.greenTextStyle.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(20),
                SizedBox(
                  width: 335,
                  child: Text(
                    'Discover delicious food from the amazing restaurants near you',
                    style: AppStyles.paragraphText,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 700.h,
            left: 20.h,
            right: 20.w,
            child: CustomBtn(
              text: 'Next',
              btnColor: AppColors.lightgreen,
              textColor: AppColors.white,
              onPressed: () {
                context.go(AppRoutes.home);
              },
            ),
          ),
        ],
      ),
    );
  }
}
