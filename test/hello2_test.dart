import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello2/hello2.dart';

void main() {
  const MethodChannel channel = MethodChannel('hello2');

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
    expect(await Hello2.platformVersion, '42');
  });
}
