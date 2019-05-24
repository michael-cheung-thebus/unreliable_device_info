import 'dart:async';

import 'package:flutter/services.dart';

class UnreliableDeviceInfo {
  static const MethodChannel _channel =
      const MethodChannel('unreliable_device_info');

  static Future<String> get manufacturerSerialNumber async =>
      await _channel.invokeMethod('getManufacturerSerialNumber');

  static Future<bool> get hasException async =>
      await _channel.invokeMethod('hasException');

  static Future<String> get exceptionMessage async =>
      await _channel.invokeMethod('exceptionMessage');
}