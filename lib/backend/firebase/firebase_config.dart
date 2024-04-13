import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDtUiRwi_3udaGKCmbORNbm0dMAeydpuMU",
            authDomain: "specno-currency.firebaseapp.com",
            projectId: "specno-currency",
            storageBucket: "specno-currency.appspot.com",
            messagingSenderId: "85552668643",
            appId: "1:85552668643:web:741d024761ee0c8519cad6"));
  } else {
    await Firebase.initializeApp();
  }
}
