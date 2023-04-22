import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBtHzZgSXW3mzwa3xkNGwgl4fcp8lF5L7E",
            authDomain: "kahootquiz-e50fa.firebaseapp.com",
            projectId: "kahootquiz-e50fa",
            storageBucket: "kahootquiz-e50fa.appspot.com",
            messagingSenderId: "738817563912",
            appId: "1:738817563912:web:c6761a6fc2b18dfe9460bd",
            measurementId: "G-PRJEXP1ZK1"));
  } else {
    await Firebase.initializeApp();
  }
}
