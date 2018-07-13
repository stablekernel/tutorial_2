import 'package:angular_router/angular_router.dart';

final search = new RoutePath(path: 'search');
final zipCodeParameter = 'zipCode';
final weather = new RoutePath(path: '${search.path}/:$zipCodeParameter');

String getZipCode(Map<String, String> parameters) {
  final id = parameters[zipCodeParameter];
  return id == null ? null : id;
}