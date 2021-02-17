import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              'Favourites',
              style: TextStyle(
                color: Colors.green[300],
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height - 180,
          color: Colors.blue[100],
          child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            // ignore: todo
            // TODO: Build a grid of cards (102)
            children: [
              buildGridViewItem(
                'images/salmon_fillet.jpg', 'Salmon Fillet', 'Favourites'),
              buildGridViewItem(
                'images/baseline_food_bank_black_18dp.png', 'test', 'testing 1, 2, 3'),
            ],
          ),
        )
      ],
    );
  }
}


buildGridViewItem(String img, String line1, String line2) {
  return new GestureDetector(
    child: new Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0/11.0,
            child: Image.asset(img),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(line1),
                SizedBox(height: 8.0),
                Text(line2),
              ],
            ),
          ),
        ],
      )
    ),
    onTap: () {
    }
  );
}