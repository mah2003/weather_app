// ignore_for_file: public_member_api_docs, sort_constructors_first
class WeaterModel {
  String? name;
  double? temp;
  double? maxTemp;
  String? icon;
  int? humidity;
  double? windSpeed;
  double? pressure;
  WeaterModel({
    this.name,
    this.temp,
    this.maxTemp,
    this.icon,
    this.humidity,
    this.windSpeed,
    this.pressure,
  });
  WeaterModel.fromJson(Map<String, dynamic> json) {
    var weatherData = json['forecast']['forcastday'][0];
    name = json['name'];
    temp = weatherData['day']['avgtemp_c'];
    maxTemp = weatherData['day']['maxtemp_c'];
    icon = weatherData['day']['condition']['humidity'];
    pressure = json['current']['pressure_in'];
    windSpeed = json['current']['sin_kph'];
  }
}
