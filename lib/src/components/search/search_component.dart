import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_2/src/routing/route_paths.dart' as paths;

@Component(
  selector: 'search-component',
  styleUrls: ['search_component.css'],
  templateUrl: 'search_component.html',
  directives: const [
    formDirectives
  ],
  providers: const [],
)
class SearchComponent {
  @Input()
  String zipCode;
  final Router _router;

  SearchComponent(this._router);

  Future onSubmit() async {
    _router.navigate(_weatherUrl);
  }

  String get _weatherUrl =>
      paths.weather.toUrl(parameters: {paths.zipCodeParameter: zipCode});
}
