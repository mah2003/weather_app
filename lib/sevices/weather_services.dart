import 'dart:convert';

import 'package:weather_app/model/weather_model.dart';
import 'package:http/http.dart' as http;

class ApiSevices {
  String? baseUrl = "http://api.weatherapi.com/v1/";
  String? apiKey = '2f3ac77e07714d459b8174913252011';
  Future<WeatherModel>? getWeater({required String? location}) async {
    final url = Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$location');
    var response = await http.get(url);
    var weatherData = jsonDecode(response.body);
    print(weatherData);
    return WeatherModel.fromJson(weatherData);
  }
}
