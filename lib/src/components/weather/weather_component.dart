import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_2/src/components/search/search_component.dart';
import 'package:tutorial_2/src/services/weather_service.dart';
import 'package:tutorial_2/src/routing/route_paths.dart' as paths;
import 'package:tutorial_2/src/view_models/weather_view_model.dart';

//TODO find a good name -- search details?

@Component(
  selector: 'weather-component',
  styleUrls: ['weather_component.css'],
  templateUrl: 'weather_component.html',
  directives: const [coreDirectives, formDirectives, SearchComponent],
  providers: const [WeatherApi],
)
class WeatherComponent implements OnActivate {
  WeatherApi _api;
  String zipCode;
  WeatherViewModel viewModel = WeatherViewModel();

  WeatherComponent(this._api);

  @override
  Future<void> onActivate(_, RouterState current) async {
    zipCode = paths.getZipCode(current.parameters);
    if (zipCode != null) {
      try {
        viewModel.weather = await _api.getWeather(zipCode);
      } catch (message) {
        viewModel.error = message;
      }
    }
  }
}
