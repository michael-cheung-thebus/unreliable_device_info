import 'dart:async';

import 'package:flutter/services.dart';

class UnreliableDeviceInfo {
  static const MethodChannel _channel =
      const MethodChannel('unreliable_device_info');

  ///try to get the manufacturer's serial number from some sketchy places
  ///i.e. not the "proper" locations like android.os.Build
  static Future<String> get manufacturerSerialNumber async =>
      await _channel.invokeMethod('getManufacturerSerialNumber');

  ///plugin is expected to handle all exceptions
  ///if an exception was handled by the last function call
  ///this will be set to true
  ///if the last function call completed without exception
  ///then it will be false
  static Future<bool> get hasException async =>
      await _channel.invokeMethod('hasException');

  ///the message, if any, given by the last caught exception
  ///if hasException == false, this should be null
  static Future<String> get exceptionMessage async =>
      await _channel.invokeMethod('exceptionMessage');
}