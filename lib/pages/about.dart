import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              'About FreshCare Recipes',
              style: TextStyle(
                color: Colors.green[300],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue[100],),
              child: Text(
                'There are times where people find it a hassle to look for the right ingredients to cook or simply do not have the time to . Some may find cooking to be tedious and tend to prepare instant meals instead. Consuming too many instant foods like cup noodles can be detrimental to one’s health as they contain high levels of sodium which can lead to problems like high blood pressure and can negatively affect heart and kidney health . Having a healthy meal brings a positive impact on a person’s mentality and keeps one’s body well nourished.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.blue[100],),
              child: Text(
                'With FreshCare Recipes, we provide healthy and easy to prepare recipes along with where to find the ingredients required so that consumers do not need to spend too much time looking for ingredients while having a healthy and scrumptious meal. ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}