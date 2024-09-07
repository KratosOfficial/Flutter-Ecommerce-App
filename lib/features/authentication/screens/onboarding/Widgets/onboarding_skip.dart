import 'package:flutter/material.dart';
import 'package:shoppingmall/features/authentication/controllers.onboarding/onboarding.controller.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/devices/device_utility.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: KDeviceUtils.getAppBarHeight(),
        right: KSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Text('Skip')));
  }
}
