import 'package:career_hub/pages/bottom_bar.dart';
import 'package:career_hub/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'notifier/auth_notifier.dart';

void main(){
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));  
   runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => AuthNotifier(), 
          create: (BuildContext context) {
            return AuthNotifier();
          },
        ),
      ],
      child: MyApp(),
    ));

    }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        primarySwatch: Colors.deepPurple,
            appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              elevation: 5,
              color: ThemeData.light().canvasColor,
            )
        ),
      debugShowCheckedModeBanner: false,
      title: 'CarrerHub',
      home: Consumer<AuthNotifier>(
        builder: (context, notifier, child) {
          return notifier.user != null ? Home() : Login();
        },
      ),
    );
  }
}