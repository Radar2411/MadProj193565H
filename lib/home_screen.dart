import 'package:flutter/material.dart';
import 'package:m1_193565h_madproj1/pages/login.dart';
import 'drawer.dart';
import 'pages/home.dart';
import 'pages/edit_profile.dart';
import 'pages/favourites.dart';
import 'pages/about.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String title = 'Freshcare Recipes';
  int index = 0;
  List<Widget>list = [Home(), Favourites(), About(), EditProfile(), Login()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(title),
      ),
      // body: Home(),
      // drawer: MyDrawer(),
      body: list[index],
      drawer: MyDrawer(onTap:(context, i, txt){
        setState( (){ index = i;
                      title = txt;
                      Navigator.pop(context);
                      });
        }
      ),
    );
  }
}