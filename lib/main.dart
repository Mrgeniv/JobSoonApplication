import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsoonapp/authenticationScreen/login_screen.dart';
import 'package:jobsoonapp/controllers/authentication_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) 
  {
    Get.put(AuthenticationController()); 
  });

  

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
   @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'JobSoonApp',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: const LoginScreen(),


    );
  }
}



