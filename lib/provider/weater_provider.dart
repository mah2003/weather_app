import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

class WeaterProvider extends ChangeNotifier {
  WeaterModel? weatherProvider;
  void getWeaterData(WeaterModel weatherData) {
    weatherProvider = weatherData;
    notifyListeners();
  }
}
