import 'package:flutter/material.dart';
import 'package:flutter_golden_test/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  const targetWidget = MyApp();
  const targetSize = Size(392, 813);

  testGoldens(
    'my_app',
    (WidgetTester tester) async {
      await tester.pumpWidgetBuilder(targetWidget, surfaceSize: targetSize);
      await screenMatchesGolden(tester, 'my_app');
    },
  );
}
