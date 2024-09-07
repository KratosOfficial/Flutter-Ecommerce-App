import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoppingmall/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shoppingmall/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Folder Structure',
      themeMode: ThemeMode.system,
      theme: KAppTheme.lightTheme,
      darkTheme: KAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // initialBinding: GeneralBindings(),
      home: const OnBoardingScreen(),
    );
  }
}
