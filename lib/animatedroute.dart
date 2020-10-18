library animatedroute;

import 'package:flutter/material.dart';

class AnimatedRoute extends PageRouteBuilder {
  /// This basically takes the Nextscreen you would like to navigate to
  final Widget widget;
  /// This represent or takes the entry/exit curve of your animation
  final Curve curves;
  /// This represent or takes in the direction of your animation
  final Alignment alignment;
  /// This represent or takes in the duration of your animation
  Duration duration;

  AnimatedRoute(
      {@required this.widget,
      @required this.curves,
      @required this.alignment,
      this.duration})
      : super(
            transitionDuration: duration ?? Duration(seconds: 1),
            transitionsBuilder: (contexts, Animation<double> animation,
                Animation<double> secAnimation, Widget child) {
              animation = CurvedAnimation(parent: animation, curve: curves);
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
