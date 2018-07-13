import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:tutorial_2/src/routing/route_paths.dart' as paths;
import 'package:tutorial_2/src/components/search/search_component.template.dart' as searchComponent;
import 'package:tutorial_2/src/components/weather/weather_component.template.dart' as weatherComponent;


@Injectable()
class Routes {
  static final _search = new RouteDefinition(
    routePath: paths.search,
    component: searchComponent.SearchComponentNgFactory,
  );

  static final _weather = new RouteDefinition(
    routePath: paths.weather,
    component: weatherComponent.WeatherComponentNgFactory,
  );

  RouteDefinition get weather => _weather;
  RouteDefinition get search => _search;

  final List<RouteDefinition> all = [
    _search,
    _weather,
    new RouteDefinition.redirect(path: '', redirectTo: paths.search.toUrl()),
  ];
}