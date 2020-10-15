library animatedroute;

import 'package:flutter/material.dart';

class AnimatedRoute extends PageRouteBuilder {
  final Widget widget;
  final Curve curves;
  final Alignment alignment;
  Duration duration;

  AnimatedRoute({@required this.widget, @required this.curves, @required this.alignment, this.duration})
      : super(
      transitionDuration: duration ?? Duration(seconds: 1),
      transitionsBuilder: (contexts, Animation<double> animation,
          Animation<double> secAnimation, Widget child) {
        animation = CurvedAnimation(
            parent: animation, curve: curves);
        return ScaleTransition(
          scale: animation,
          child: child,
          alignment: alignment,
        );
      },
      pageBuilder: (
          contexts,
          Animation<double> animation,
          Animation<double> secAnimation,
          ) {
        return widget;
      });
}