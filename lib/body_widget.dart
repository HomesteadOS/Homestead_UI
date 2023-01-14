import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
Right now this is a useless class that just adds to the abstraction but I have
planned to add a couple of items to the base body widget, like a floating login
and logout button, a floating go to the emergency/utility view (camera feeds,
sensor data, ways to broadcast calls for help with non-emergency tasks,
leaving tasks for others to complete, and reports)
 */

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key = const Key("Body"),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // ...
      ],
    );
  }
}
