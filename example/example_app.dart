import 'package:animatedroute/animatedroute.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: (){
              Navigator.of(context).push(AnimatedRoute(widget: NextScreen(), curves: Curves.easeInOutCubic, alignment: Alignment.bottomCenter));
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

