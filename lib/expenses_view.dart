import 'package:flutter/cupertino.dart';
import 'package:homestead_ui/expenses_overview.dart';

import 'body_widget.dart';

class ExpensesWidget extends BodyWidget {
  const ExpensesWidget({Key key = const Key("Expenses")}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[ExpensesOverview()],
    );
  }
}
