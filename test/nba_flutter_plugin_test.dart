import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nba_flutter_plugin/nba_flutter_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('nba_flutter_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await NbaFlutterPlugin.platformVersion, '42');
  });
}
