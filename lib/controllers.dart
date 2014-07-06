import 'controllers/characters/list.dart';
import 'controllers/characters/new.dart';

abstract class CharacterManagerControllers {
  void loadControllers() {
    type(CharactersListController);
    type(CharactersNewController);
  }
}
