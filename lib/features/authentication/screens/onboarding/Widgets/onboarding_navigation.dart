import 'package:flutter/material.dart';
import 'package:shoppingmall/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = KHelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: KDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: KSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            count: 3,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? KColors.light : KColors.dark,
                dotHeight: 6)));
  }
}
