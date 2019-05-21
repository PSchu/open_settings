import 'dart:async';

import 'package:flutter/services.dart';

class OpenSettings {
  static const MethodChannel _channel = const MethodChannel('open_settings');

  /// Open Wifi settings
    static Future<void> openWIFISetting() async {
    await _channel.invokeMethod('openSettings', 'wifi');
  }

  /// Open mobile data settings
  static Future<void> openMobileDataSetting() async {
    await _channel.invokeMethod('openSettings', 'data');
  }

  /// Open location settings
  static Future<void> openLocationSetting() async {
    await _channel.invokeMethod('openSettings', 'location');
  }

  /// Open app settings
  static Future<void> openAppSetting() async {
    await _channel.invokeMethod('openSettings', 'setting');
  }

  /// Open Bluetooth settings
  static Future<void> openBluetoothSetting() async {
    await _channel.invokeMethod('openSettings', 'bluetooth');
  }

  /// Open Notification settings
  static Future<void> openNotificationSetting() async {
    _channel.invokeMethod('openSettings', 'notification');
  }

  /// Open Security Screen settings
  static Future<void> openSecuritySetting() async {
    _channel.invokeMethod('openSettings', 'security');
  }

  /// Open sound Screen settings
  static Future<void> openSoundSetting() async {
    _channel.invokeMethod('openSettings', 'sound');
  }
}
