import 'package:animatedroute/animatedroute.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tweet Savages',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ExampleApp());
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(AnimatedRoute(
                  widget: NextScreen(),
                  curves: Curves.easeInOutCubic,
                  alignment: Alignment.bottomCenter));
            },
          ),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.lightBlueAccent,
    );
  }
}
