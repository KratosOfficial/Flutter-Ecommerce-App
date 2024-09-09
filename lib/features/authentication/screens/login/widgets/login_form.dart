import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingmall/features/authentication/screens/signup/signup.dart';
import 'package:shoppingmall/utils/constants/sizes.dart';
import 'package:shoppingmall/utils/constants/texts.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: KSizes.spaceBtwSections),
          child: Column(
            children: [
              ///  Email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  ),
                  labelText: KTexts.email,
                ),
              ),

              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              /// Password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Iconsax.password_check,
                  ),
                  labelText: KTexts.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(
                height: KSizes.spaceBtwInputFields / 2,
              ),

              ///  Remember Me & Forgot Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      /// Remember Me
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(KTexts.rememberMe),
                    ],
                  ),
                  const Spacer(),

                  ///Forgot Password
                  TextButton(
                      onPressed: () {},
                      child: const Text(KTexts.forgetPassword)),
                ],
              ),
              const SizedBox(
                height: KSizes.spaceBtwSections,
              ),

              /// Sign In Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text(KTexts.signIn))),
              const SizedBox(
                height: KSizes.spaceBtwItems,
              ),

              /// Create Account Button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () =>  Get.to(()  => const SignupScreen()),
                      child: const Text(KTexts.createAccount))),
            ],
          ),
        ));
  }
}


