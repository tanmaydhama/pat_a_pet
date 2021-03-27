import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pat_a_pet/home.dart';
import 'package:pat_a_pet/status.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Status(),
      child: MaterialApp(
        home: home(),
      ),
    );
  }
}
