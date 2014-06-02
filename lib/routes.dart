library character_manager_routing;

import 'package:angular/angular.dart';

void characterManagerRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'characters': ngRoute(
      defaultRoute: true,
      path: '/',
      view: './characters.html'
    )
  });
}
