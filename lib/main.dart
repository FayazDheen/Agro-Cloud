import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'screens/login.dart';
import 'spalsh.dart';
import 'package:agro_cloud/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color(0xff46426c),
      ),
      routes: {
        '/': (_) => Splash(),
        //'/splash': (_) => Splash(),
        '/login': (_) => Login(),
        '/home': (_) => Home(),
      },
    );
  }
}
