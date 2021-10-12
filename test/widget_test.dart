import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import 'test_utils/base_widget.dart';

void main() {
  group('Golden tests', () {
    testGoldens('1', (tester) async {
      await loadAppFonts();
      await tester.pumpWidget(baseWidget);
      await screenMatchesGolden(tester, '1');
    });
  });
}
