import 'package:angular/angular.dart';
import 'package:character_manager/firebase.dart';

@Controller(
  selector: '[list-characters-ctrl]',
  publishAs: 'ctrl'
)
class CharactersListController {
  List characters;
  AngularFire _afCharacters;

  CharactersListController(FirebaseResultsAdapter fbAdapter) {
    _afCharacters = fbAdapter.results('characters');
    characters = _afCharacters.values;
  }

  void deleteCharacter(key) {
    _afCharacters.remove(key);
  }
}
