
import 'dart:async';

import 'package:flutter/services.dart';

class Hello2 {
  static const MethodChannel _channel = MethodChannel('hello2');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static void startDialog() async {
    await _channel.invokeMethod('startDialog');
  }
}
