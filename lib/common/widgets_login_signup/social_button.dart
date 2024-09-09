import 'package:flutter/material.dart';
import 'package:shoppingmall/utils/constants/colors.dart';

import '../../utils/constants/image_string.dart';
import '../../utils/constants/sizes.dart';

class socialbutton extends StatelessWidget {
  const socialbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: KSizes.iconMd,
                  height: KSizes.iconMd,
                  image: AssetImage(KImages.google))),
        ),
        const SizedBox(
          width: KSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: KColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
              onPressed: () {},
              icon: const Image(
                  width: KSizes.iconMd,
                  height: KSizes.iconMd,
                  image: AssetImage(KImages.facebook))),
        ),
      ],
    );
  }
}