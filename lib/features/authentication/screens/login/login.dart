import 'package:flutter/material.dart';
import 'package:shoppingmall/common/styles/spacing_styles.dart';
import 'package:shoppingmall/common/widgets_login_signup/social_button.dart';
import 'package:shoppingmall/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shoppingmall/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shoppingmall/utils/constants/sizes.dart';
import 'package:shoppingmall/utils/constants/texts.dart';
import 'package:shoppingmall/utils/helpers/helper_functions.dart';
import '../../../../common/widgets_login_signup/form_divider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = KHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: KSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              loginHeader(dark: dark),

              /// Form
              const loginForm(),

              /// Divider
              formdivider(dark: dark, text: KTexts.orSignInWith),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              /// Social Button
              const socialbutton()
            ],
          ),
        ),
      ),
    );
  }
}

