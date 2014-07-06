import 'package:angular/angular.dart';
import 'package:character_manager/firebase.dart';

@Controller(
  selector: '[new-character-ctrl]',
  publishAs: 'form'
)
class CharactersNewController {
  AngularFire _fbCharacters;
  final Router _router;
  final FirebaseResultsAdapter _fbAdapter;

  String name;

  CharactersNewController(this._router, this._fbAdapter) {
    _fbCharacters = _fbAdapter.results('characters');
  }

  submit() {
    var character = {
      'name': name
    };
    _fbCharacters.add(character);

    var route = _router.url('characters.list');
    _router.gotoUrl(route);
  }
}
