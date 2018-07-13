
class WeatherResponse {
  WeatherResponse(this._locationName, this._tempInKelvin, this._description, this._icon);
  factory WeatherResponse.fromJson(Map<String, dynamic> jsonMap) {
    return WeatherResponse(jsonMap["name"], jsonMap["main"]["temp"], jsonMap["weather"][0]["description"], jsonMap["weather"][0]["icon"]);
  }

  String _locationName;
  double _tempInKelvin;
  String _description;
  String _icon;

  String get location => _locationName;
  double get tempInKelvin => _tempInKelvin;
  String get description => _description;
  String get icon => _icon;
}