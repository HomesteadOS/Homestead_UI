import 'package:flutter/material.dart';
import 'package:homestead_ui/animals_view.dart';
import 'package:homestead_ui/body_widget.dart';
import 'package:homestead_ui/expenses_view.dart';

void main() {
  runApp(const HomesteadOS());
}

class HomesteadOS extends StatelessWidget {
  const HomesteadOS({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homestead OS',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Dashboard(title: 'Dashboard'),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Homestead OS'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.attach_money),
                text: "Expenses",
              ),
              Tab(
                icon: Icon(Icons.eco),
                text: "Garden",
              ),
              Tab(
                icon: Icon(Icons.pets),
                text: "Animals",
              ),
              Tab(icon: Icon(Icons.forest), text: "Forestry"),
              Tab(
                icon: Icon(Icons.solar_power),
                text: "Energy",
              ),
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: ExpensesWidget(key: Key("Expenses")),
            ),
            Center(
              child: BodyWidget(key: Key("Garden")),
            ),
            Center(
              child: AnimalsWidget(key: Key("Animals")),
            ),
            Center(
              child: BodyWidget(key: Key("Forestry")),
            ),
            Center(
              child: BodyWidget(key: Key("Energy")),
            ),
            Center(
              child: BodyWidget(key: Key("Home")),
            )
          ],
        ),
      ),
    );
  }
}
