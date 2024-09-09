
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingmall/utils/constants/texts.dart';
import 'package:shoppingmall/utils/helpers/helper_functions.dart';

import '../../../../../common/widgets_login_signup/form_divider.dart';
import '../../../../../common/widgets_login_signup/social_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class signupform extends StatelessWidget {
  const signupform({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: KTexts.firstName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
                SizedBox(
                  width: KSizes.spaceBtwInputFields,
                ),
                Expanded(
                  child: TextFormField(
                    expands: false,
                    decoration: const InputDecoration(
                        labelText: KTexts.lastName,
                        prefixIcon: Icon(Iconsax.user)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),

            /// Username
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: KTexts.username,
                  prefixIcon: Icon(Iconsax.user_edit)),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),

            /// Email
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: KTexts.email,
                  prefixIcon: Icon(Iconsax.direct)),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),

            /// Phone  Number
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: KTexts.phoneNo,
                  prefixIcon: Icon(Iconsax.call)),
            ),
            const SizedBox(
              height: KSizes.spaceBtwInputFields,
            ),

            /// Password
            TextFormField(
              expands: false,
              decoration: const InputDecoration(
                labelText: KTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: KSizes.spaceBtwSections,
            ),

            /// Terms and conditions checkbox
            Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(value: true, onChanged: (value) {})),
                const SizedBox(
                  width: KSizes.spaceBtwItems,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: '${KTexts.iAgreeTo}  ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${KTexts.privacyPolicy}',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                          color: dark ? KColors.white : KColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                          dark ? KColors.white : KColors.primary)),
                  TextSpan(
                      text: ' ${KTexts.and} ',
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: '${KTexts.termsOfUse}',
                      style: Theme.of(context).textTheme.bodySmall!.apply(
                          color: dark ? KColors.white : KColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor:
                          dark ? KColors.white : KColors.primary)),
                ])),
              ],
            ),
            const SizedBox(
              height: KSizes.spaceBtwSections,
            ),

            ///Sign up Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(KTexts.createAccount)),
            ),

            const SizedBox(
              height: KSizes.spaceBtwSections,
            ),

            /// Divider
            formdivider(dark: dark, text: KTexts.orSignUpWith),
            const SizedBox(
              height: KSizes.spaceBtwSections,
            ),

            const socialbutton(),
          ],
        ));
  }
}
