import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBpAPzQO1LwI2WUHAdqONck1WcsNeFk2fU",
            authDomain: "scanqrcode-59dc7.firebaseapp.com",
            projectId: "scanqrcode-59dc7",
            storageBucket: "scanqrcode-59dc7.appspot.com",
            messagingSenderId: "439796046004",
            appId: "1:439796046004:web:aa0c725aef6a3fc7e45fe1"));
  } else {
    await Firebase.initializeApp();
  }
}
