import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:angular/routing/module.dart';

import 'package:character_manager/firebase.dart';
import 'package:character_manager/controllers.dart';
import 'package:character_manager/routes.dart';

class CharacterManagerModule extends Module with CharacterManagerControllers {
  CharacterManagerModule() {
    loadControllers();
    type(FirebaseResultsAdapter);
    value(RouteInitializerFn, characterManagerRouteInitializer);
  }
}

main() {
  applicationFactory()
    .addModule(new CharacterManagerModule())
    .run();
}
