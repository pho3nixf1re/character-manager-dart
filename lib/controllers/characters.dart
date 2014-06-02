library character_manager_controller;

import 'package:angular/angular.dart';
import 'package:character_manager/firebase.dart';

@Controller(
  selector: '[characters]',
  publishAs: 'ctrl'
)
class CharactersController {
  List characters;

  CharactersController(FirebaseResultsAdapter fbAdapter) {
    characters = fbAdapter.results('characters').values;
  }
}
