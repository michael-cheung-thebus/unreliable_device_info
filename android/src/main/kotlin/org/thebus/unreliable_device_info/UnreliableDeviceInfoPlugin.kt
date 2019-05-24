package org.thebus.unreliable_device_info

import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class UnreliableDeviceInfoPlugin: MethodCallHandler {
  companion object {

    @JvmStatic
    fun registerWith(registrar: Registrar) {
      val channel = MethodChannel(registrar.messenger(), "unreliable_device_info")
      channel.setMethodCallHandler(UnreliableDeviceInfoPlugin())
    }
  }

  override fun onMethodCall(call: MethodCall, result: Result) {

    when(call.method){
      "getManufacturerSerialNumber" ->
        result.success(ManufacturerInfo.serialNumber())

      "hasException" ->
        result.success(ExceptionInfo.hasException)

      "exceptionMessage" ->
        result.success(ExceptionInfo.exceptionMessage)

      else ->
        result.notImplemented()
    }
  }
}