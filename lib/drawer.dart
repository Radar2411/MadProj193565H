import 'package:flutter/material.dart';
import 'package:m1_193565h_madproj1/pages/login.dart';


class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/baseline_account_circle_black_18dp.png'),
                      ),
                    ),
                    SizedBox( height: 15, ),
                    Text( 'Super Hero',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    ),
                    SizedBox( height: 3, ),
                    Text( 'super_hero@nyp.edu.sg',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12, ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Image.asset('images/baseline_food_bank_black_18dp.png'),
              title: Text('Home'),
              onTap: () => onTap(context, 0, 'Home'),
            ),
            ListTile(
              leading: Image.asset('images/baseline_favorite_black_18dp.png'),
              title: Text('Favourites'),
              onTap: () => onTap(context, 1, 'Favourites'),
            ),
            ListTile(
              leading: Image.asset('images/baseline_info_black_18dp.png'),
              title: Text('About'),
              onTap: () => onTap(context, 2, 'About'),
            ),
            ListTile(
              leading: Image.asset('images/baseline_account_circle_black_18dp.png'),
              title: Text('Profile'),
              onTap: () => onTap(context, 3, 'Profile'),
            ),
            ListTile(
              leading: Image.asset('images/baseline_logout_black_18dp.png'),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(Login.routeName);
              }
            ),
          ],
        ),
      ),
    );
 }
}