import 'package:flutter_weather_app/app/modules/weather/controller/weather_controller.dart';
import 'package:get/get.dart';

class WeatherBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WeatherController>(
      () => WeatherController(),
    );
  }
}
