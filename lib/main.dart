import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_weather_app/app/data/local/my_shared_pref.dart';
import 'package:flutter_weather_app/app/modules/splash/binding/splash_binding.dart';
import 'package:flutter_weather_app/app/routes/app_pages.dart';
import 'package:flutter_weather_app/config/theme/my_theme.dart';
import 'package:flutter_weather_app/config/translations/localization_services.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MySharedPref.init();
  await initializeDateFormatting(
      LocalizationService.getCurrentLocal().languageCode);

  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          title: 'Weather App',
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          builder: (context, widget) {
            return Theme(
              data:
                  MyTheme.getThemeData(isLight: MySharedPref.getThemeIsLight()),
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: widget!,
              ),
            );
          },
          initialBinding: SplashBinding(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          locale: MySharedPref.getCurrentLocal(),
          translations: LocalizationService.getInstance(),
        );
      },
    ),
  );
}
