import 'package:angular/angular.dart';
import 'package:firebase/firebase.dart';
import 'package:angularfire/angularfire.dart';

@Injectable()
class FirebaseResultsAdapter {
  static const String BASE = 'https://boiling-fire-5958.firebaseio.com';
  static const String ROOT_PATH = '/';
  Firebase _firebase;
  // AngularFire _results;

  FirebaseResultsAdapter() {
    Firebase _firebase = new Firebase(BASE);
  }

  AngularFire results([String path]) {
    Firebase firebase = _firebase;
    if (path != null) {
      path = _parsePath(path);
      firebase = _firebase.child(path);
    }
    new AngularFire(firebase);
  }

  String _parsePath(String path) {
    if (path.startsWith(ROOT_PATH)) {
      return path;
    } else {
      return ROOT_PATH + path;
    }
  }
}
