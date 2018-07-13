import 'dart:async';
import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:tutorial_2/src/models/weather_response.dart';
import 'package:http/http.dart';

abstract class WeatherService {
  Future<WeatherResponse> getWeather(String atZipCode);
}

@Injectable()
class WeatherApi implements WeatherService {

  WeatherApi(this._client);

  Client _client;
  String _weatherUrl = "http://api.openweathermap.org/data/2.5/weather";

  Future<WeatherResponse> getWeather(String atZipCode) async {
    String url = "$_weatherUrl?zip=$atZipCode,us&appid=afe3ce3fd5997db6c7aac9cf8eb6d1f0";
    print(url);
    final response = await _client.get(url);
    try {
      return WeatherResponse.fromJson(json.decode(response.body));
    } catch (e) {
      print(e);
      Map errorMap = json.decode(response.body);
      if (errorMap.containsKey("message")) {
        throw errorMap["message"];
      }
      throw "Something went wrong";
    }
  }
}

