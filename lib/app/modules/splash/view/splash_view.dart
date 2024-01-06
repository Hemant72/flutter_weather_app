import 'package:flutter/material.dart';
import 'package:flutter_weather_app/app/modules/splash/controller/splash_controller.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../utils/constants.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: Center(
        child: Lottie.asset(Constants.weatherAnimation),
      ),
    );
  }
}
