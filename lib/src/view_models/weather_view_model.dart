import 'package:tutorial_2/src/models/weather_response.dart';

class WeatherViewModel {
  String error;
  WeatherResponse weather;

  int get _tempInF => (32.0 + (weather.tempInKelvin - 273.15) * 9.0 / 5.0).toInt();
  String get temperature => "${_tempInF} °F";
  String get location => weather.location;
  String get description => weather.description;
  String get iconUrl => "http://openweathermap.org/img/w/${weather.icon}.png";
  bool get hasError => error != null;
  bool get hasWeather => weather != null;
}