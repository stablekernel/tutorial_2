import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';
import 'package:tutorial_2/src/components/app/app_component.template.dart' as ng;

import 'main.template.dart' as self;

@GenerateInjector([
  const ClassProvider(Client, useClass: BrowserClient),
  routerProvidersHash,

])
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}