import 'package:angular/angular.dart';

void characterManagerRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'characters': ngRoute(
      defaultRoute: true,
      path: '/characters',
      mount: {
        'list': ngRoute(
          defaultRoute: true,
          path: '/list',
          view: '/characters/list.html'
        ),
        'new': ngRoute(
          path: '/new',
          view: '/characters/new.html'
        )
      }
    )
  });
}
