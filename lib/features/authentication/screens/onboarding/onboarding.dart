import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingmall/features/authentication/controllers.onboarding/onboarding.controller.dart';
import 'package:shoppingmall/utils/constants/image_string.dart';
import 'package:shoppingmall/utils/constants/texts.dart';
import 'Widgets/onboarding_navigation.dart';
import 'Widgets/onboarding_nextbutton.dart';
import 'Widgets/onboarding_page.dart';
import 'Widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: KImages.onBoardingImage1,
                title: KTexts.onBoardingTitle1,
                subTitle: KTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage2,
                title: KTexts.onBoardingTitle2,
                subTitle: KTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: KImages.onBoardingImage3,
                title: KTexts.onBoardingTitle3,
                subTitle: KTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// skip button
          const onBoardingSkip(),

          /// Dot Navigation
          const OnBoardingNavigation(),

          /// Dot Navigation
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
