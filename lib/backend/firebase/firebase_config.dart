import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAf0zoyxmYsB5M8On65piZFqPgEm6B5jr8",
            authDomain: "homis-815.firebaseapp.com",
            projectId: "homis-815",
            storageBucket: "homis-815.appspot.com",
            messagingSenderId: "814225038043",
            appId: "1:814225038043:web:bd45b5071478b561670afe",
            measurementId: "G-6B7MZWY7T7"));
  } else {
    await Firebase.initializeApp();
  }
}
