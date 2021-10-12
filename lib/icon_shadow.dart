import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class IconShadowWidget extends StatelessWidget {
  final Icon child;
  final Color shadowColor;
  final bool showShadow;

  const IconShadowWidget({
    required this.child,
    this.shadowColor = Colors.black26,
    this.showShadow = true,
  });

  @override
  Widget build(BuildContext context) {
    const opacities = <double>[0.01, 0.06, 0.2];
    const dimensions = <double>[3.0, 2.0, 1.0];

    final list = <Widget>[];

    for (int i = showShadow ? 0 : 1; i < opacities.length; i++) {
      final opacity = opacities[i];
      final dimens = dimensions[i];
      list.addAll([
        Positioned(
          bottom: dimens,
          right: dimens,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: shadowColor,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          bottom: dimens,
          left: dimens,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: shadowColor,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          top: dimens,
          left: dimens,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: shadowColor,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          top: dimens,
          right: dimens,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: shadowColor,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
      ]);
    }

    list.addAll([
      ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(sigmaX: 0.9, sigmaY: 0.9),
          child: IconTheme(data: IconThemeData(opacity: 1.0), child: child),
        ),
      ),
      IconTheme(data: IconThemeData(opacity: 1.0), child: child),
    ]);

    return Stack(
      alignment: Alignment.center,
      children: list,
    );
  }
}
