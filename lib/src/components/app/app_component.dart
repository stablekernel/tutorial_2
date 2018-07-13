import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:tutorial_2/src/routing/routes.dart';
// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [coreDirectives, routerDirectives],
  providers: const [Routes],
)
class AppComponent {
  final Routes routes;

  AppComponent(this.routes);
}
