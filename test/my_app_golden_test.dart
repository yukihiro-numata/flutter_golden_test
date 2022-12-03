import 'package:flutter_golden_test/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  const targetWidget = MyApp();

  testGoldens(
    'my_app',
    (WidgetTester tester) async {
      final builder = DeviceBuilder()
        ..overrideDevicesForAllScenarios(
          devices: [
            Device.phone,
            Device.iphone11,
          ],
        )
        ..addScenario(
          widget: targetWidget,
          name: 'my_app',
        );
      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'my_app');
    },
  );
}
