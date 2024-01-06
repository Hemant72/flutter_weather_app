import 'package:flutter_weather_app/app/modules/home/binding/home_binding.dart';
import 'package:flutter_weather_app/app/modules/home/view/home_view.dart';
import 'package:flutter_weather_app/app/modules/splash/binding/splash_binding.dart';
import 'package:flutter_weather_app/app/modules/splash/view/splash_view.dart';
import 'package:flutter_weather_app/app/modules/weather/binding/home_binding.dart';
import 'package:flutter_weather_app/app/modules/weather/view/weather_view.dart';
import 'package:flutter_weather_app/app/modules/welcome/binding/welcome_binding.dart';
import 'package:flutter_weather_app/app/modules/welcome/view/welcome_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WEATHER,
      page: () => const WeatherView(),
      binding: WeatherBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}
