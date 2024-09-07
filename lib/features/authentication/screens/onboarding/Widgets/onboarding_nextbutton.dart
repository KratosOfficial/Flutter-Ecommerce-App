import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingmall/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:shoppingmall/utils/constants/colors.dart';
import 'package:shoppingmall/utils/devices/device_utility.dart';
import 'package:shoppingmall/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Positioned(
        right: KSizes.defaultSpace,
        bottom: KDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? KColors.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}