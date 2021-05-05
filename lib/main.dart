import 'dart:developer';
import 'package:DriverApp/Login/login.dart';
import 'package:DriverApp/adduser.dart';
import 'package:DriverApp/screens/login.dart';
import 'package:DriverApp/shared/models/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
  
          debugShowCheckedModeBanner: false,
          home:SplashScreen(),
        );
  }
  
  }

