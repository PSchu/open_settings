import 'dart:async';

import 'package:flutter/services.dart';

class OpenSettings {
  static const MethodChannel _channel =
      const MethodChannel('open_settings');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
