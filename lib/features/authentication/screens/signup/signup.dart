import 'package:flutter/material.dart';
import 'package:shoppingmall/features/authentication/screens/signup/widgets/signupform.dart';
import 'package:shoppingmall/utils/constants/sizes.dart';
import 'package:shoppingmall/utils/constants/texts.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(KSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                KTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              ///Form
              signupform(),
            ],
          ),
        ),
      ),
    );
  }
}
