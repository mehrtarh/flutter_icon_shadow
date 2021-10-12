import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:icon_shadow/icon_shadow.dart';

import 'test_utils/base_widget.dart';
import 'test_utils/custom_golden.dart';

void main() {
  group('Golden tests', () {
    customGoldenTest('base test', (tester) async {
      await tester.pumpWidget(generateBaseApp(child: baseWidget));
    });

    customGoldenTest('default with white background', (tester) async {
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: IconShadowWidget(
              child: Icon(
                Icons.home,
                color: Colors.red,
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
    });

    customGoldenTest('Offset: 0, 6', (tester) async {
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: IconShadowWidget(
              child: Icon(
                Icons.home,
                color: Colors.red,
              ),
              offset: Offset(0, 6),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
    });

    customGoldenTest('Offset: 3, 0', (tester) async {
      await tester.pumpWidget(
        generateBaseApp(
          child: const Center(
            child: IconShadowWidget(
              child: Icon(
                Icons.home,
                color: Colors.red,
              ),
              offset: Offset(3, 0),
            ),
          ),
          backgroundColor: Colors.white,
        ),
      );
    });
  });
}
