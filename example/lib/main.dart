import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:unreliable_device_info/unreliable_device_info.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _mainMessage = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {

    String serialNumber;
    String mainMessage;

    serialNumber = await UnreliableDeviceInfo.manufacturerSerialNumber;

    if (!mounted) return;

    if(serialNumber != null) {
      mainMessage = "Serial number is: $serialNumber";
    }else{

      if(await UnreliableDeviceInfo.hasException) {

        final exceptionMessage = await UnreliableDeviceInfo.exceptionMessage;

          mainMessage = "Exception: $exceptionMessage";
      }else{
          mainMessage =
          "Serial number null, but no exception was caught;"
          "likely a method that works for this device has not been implemented.";
      }
    }

    setState(() {
      _mainMessage = mainMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('UnreliableDeviceInfoPlugin example app'),
        ),
        body: Center(
          child: Text(_mainMessage),
        ),
      ),
    );
  }
}
