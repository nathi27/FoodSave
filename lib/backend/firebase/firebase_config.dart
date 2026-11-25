import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCkIPUuRQTNJINtNg_3-0j_krbgN__VIBM",
            authDomain: "foodsave-8cd5a.firebaseapp.com",
            projectId: "foodsave-8cd5a",
            storageBucket: "foodsave-8cd5a.firebasestorage.app",
            messagingSenderId: "1077060797346",
            appId: "1:1077060797346:web:0fa35a8a16f2a3cd88e8fb",
            measurementId: "G-Y78Q9QZ5T7"));
  } else {
    await Firebase.initializeApp();
  }
}
