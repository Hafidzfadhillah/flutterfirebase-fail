import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = Firebase.instance;

  static Future get firebasUser => null;

  static Future<FirebaseUser> signInAnonymous() async {
    try {
      AuthResult result = await _auth.signInAnonymous();
      FIrebaseUser firebaseUser = result.user;

      return firebasUser;
    } catch (e) {
      Printf(e.toString());

      return null;
    }
  }

  static Future<void> signOut() async {
    _auth.signOut();
  }
}
