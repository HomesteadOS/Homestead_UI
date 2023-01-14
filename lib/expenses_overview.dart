import 'package:flutter/material.dart';

class ExpensesOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.play_arrow),
                onPressed: () {},
              ),
              Text('00:37'),
              Slider(
                value: 0,
                onChanged: (double value) {},
              ),
              Text('01:15'),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.attach_money)),
              Text("Josh Owes: "),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.attach_money)),
              Text("Shawn and Katie owes: "),
            ],
          ),
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.attach_money),
            ),
            Text("Total spend logged MTD: ")
          ])
        ]));
  }
}
