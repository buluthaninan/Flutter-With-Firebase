import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_with_firebase/ui/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //we need to initilaze in app
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      home: Authentication(),
    );
  }
}

