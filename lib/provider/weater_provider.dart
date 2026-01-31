import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? weatherProvider;
  void getWeaterData(WeatherModel weatherData) {
    weatherProvider = weatherData;
    notifyListeners();
  }
}
