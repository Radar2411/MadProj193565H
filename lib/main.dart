import 'package:flutter/material.dart';
import 'package:m1_193565h_madproj1/home_screen.dart';
import 'package:m1_193565h_madproj1/pages/login.dart';
import 'package:m1_193565h_madproj1/pages/register.dart';
import 'package:provider/provider.dart';
import 'models/authentication.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Authentication())
      ],
      child: MaterialApp(
        home: Login(),
        routes: {
          Register.routeName: (ctx)=> Register(),
          Login.routeName: (ctx)=> Login(),
          HomeScreen.routeName: (ctx)=> HomeScreen(),

        }
      )
      
    );
  }
}
