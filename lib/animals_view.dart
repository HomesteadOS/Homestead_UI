import 'package:flutter/cupertino.dart';
import 'package:homestead_ui/animals_overview.dart';

import 'body_widget.dart';

class AnimalsWidget extends BodyWidget {
  const AnimalsWidget({Key key = const Key("Expenses")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[AnimalsOverview()],
    );
  }
}
