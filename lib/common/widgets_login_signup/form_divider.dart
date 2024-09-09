import 'package:flutter/material.dart';
import 'package:shoppingmall/utils/constants/colors.dart';

class formdivider extends StatelessWidget {
  const formdivider({
    super.key,
    required this.dark, required this.text,
  });
final String text;
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? KColors.darkGrey : KColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? KColors.darkGrey : KColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        )
      ],
    );
  }
}