import 'package:flutter/material.dart';
import 'dart:ui' as ui;

const _kIconDefaultSize = 24.0;

class IconShadowWidget extends StatelessWidget {
  final Icon child;
  final bool showShadow;
  final Color color;

  /// The displacement of the shadow from the casting element.
  ///
  /// Positive x/y offsets will shift the shadow to the right and down, while
  /// negative offsets shift the shadow to the left and up. The offsets are
  /// relative to the position of the element that is casting it.
  final Offset offset;

  /// TODO: The standard deviation of the Gaussian to convolve with the shadow's
  /// shape.
  // final double blurRadius;

  /// TODO: The amount the icon should be inflated prior to applying the blur.
  // final double spreadRadius;

  /// By default, the shadow is solid black with zero [offset], [blurRadius],
  /// and [spreadRadius].
  const IconShadowWidget({
    required this.child,
    this.color = const Color(0xFF000000),
    this.showShadow = true,
    this.offset = Offset.zero,
    // this.spreadRadius = 0.0,
    // this.blurRadius = 0.0,
  });
  // : assert(
  //         blurRadius >= 0.0,
  //         'Text shadow blur radius should be non-negative.',
  //       );

  @override
  Widget build(BuildContext context) {
    const opacities = <double>[0.01, 0.06, 0.2];
    const dimensions = <double>[3.0, 2.0, 1.0];

    final currentTheme = Theme.of(context);
    final iconSize =
        child.size ?? currentTheme.iconTheme.size ?? _kIconDefaultSize;
    final list = <Widget>[];

    for (int i = showShadow ? 0 : 1; i < opacities.length; i++) {
      final opacity = opacities[i];
      final dimens = dimensions[i];
      list.addAll([
        Positioned(
          bottom: dimens - offset.dy,
          right: dimens - offset.dx,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: color,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          bottom: dimens - offset.dy,
          left: dimens + offset.dx,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: color,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          top: dimens + offset.dy,
          left: dimens + offset.dx,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: color,
              size: child.size,
              semanticLabel: child.semanticLabel,
              textDirection: child.textDirection,
            ),
          ),
        ),
        Positioned(
          top: dimens + offset.dy,
          right: dimens - offset.dx,
          child: IconTheme(
            data: IconThemeData(opacity: opacity),
            child: Icon(
              child.icon,
              key: child.key,
              color: color,
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

    return SizedBox(
      width: iconSize + offset.dx,
      height: iconSize + offset.dy,
      child: Stack(
        alignment: Alignment.center,
        children: list,
      ),
    );
  }
}
