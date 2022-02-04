import 'package:flutter/material.dart';
import 'package:things_to_do/Pages/Auth/login.dart';
import 'package:things_to_do/firebase_options.dart';
import 'package:things_to_do/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: purple1 ,
        // fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(letterSpacing: 0,  fontSize: 45.0, fontWeight: FontWeight.bold,color: Colors.black),
          headline2: TextStyle(letterSpacing: 3,fontSize: 30.0, fontWeight: FontWeight.bold,color: Colors.black54),
         headline3: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 14.0, color: Colors.grey),
          // button: TextStyle(color: Colors.white)
        ),
      ).copyWith(scaffoldBackgroundColor: Colors.white),
      home: const LoginPage(),
    );
  }
}
