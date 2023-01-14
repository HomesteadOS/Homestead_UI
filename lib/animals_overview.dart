import 'package:flutter/material.dart';

class AnimalsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.play_arrow),
            onPressed: () {},
          ),
          Text('BAH!!'),
          Slider(
            value: 0,
            onChanged: (double value) {},
          ),
          Text('Bork! Bork! BORK!!!'),
        ],
      ),
    );
  }
}
