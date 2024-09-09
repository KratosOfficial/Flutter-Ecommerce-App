import 'package:flutter/material.dart';
import 'package:shoppingmall/utils/constants/image_string.dart';
import 'package:shoppingmall/utils/constants/sizes.dart';
import 'package:shoppingmall/utils/constants/texts.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
            height: 150,
            image: AssetImage(
                dark ? KImages.lightAppLogo : KImages.darkAppLogo)),
        Text(
          KTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: KSizes.sm,
        ),
        Text(
          KTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
