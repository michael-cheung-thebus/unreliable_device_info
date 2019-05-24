# unreliable_device_info

For getting device info, including some that isn&#x27;t exposed in a official&#x2F;neat&#x2F;reliable way

## Getting Started

Just plug and play at the moment.

Plugin is expected to handle exceptions, rather than throw PlatformException

After a method call, you can check UnreliableDeviceInfo.hasException
and UnreliableDeviceInfo.exceptionMessage

But mainly should probably assume that it likely didn't give any usable info
and handle things accordingly