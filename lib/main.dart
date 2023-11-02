import 'package:flutter/material.dart';
import 'package:snake_game/home_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyCp3BkWX5h_P2tuxJW_fvfMRCtHlaB9s0g",
        authDomain: "snakegame-59688.firebaseapp.com",
        projectId: "snakegame-59688",
        storageBucket: "snakegame-59688.appspot.com",
        messagingSenderId: "12526319049",
        appId: "1:12526319049:web:fa5ad7db4cab3e5821e418",
        measurementId: "G-LL1D7REY5P"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

