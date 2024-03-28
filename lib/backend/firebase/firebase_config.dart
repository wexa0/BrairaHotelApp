import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyABGfefv6akrpMva3pQTSbolIkYOkHN2q4",
            authDomain: "brairahotel.firebaseapp.com",
            projectId: "brairahotel",
            storageBucket: "brairahotel.appspot.com",
            messagingSenderId: "162287311429",
            appId: "1:162287311429:web:ff8d801768629619ea612c",
            measurementId: "G-3YP99VP8VV"));
  } else {
    await Firebase.initializeApp();
  }
}
