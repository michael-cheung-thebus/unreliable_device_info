## 0.1.0

First version.

UnreliableDeviceInfo.manufacturerSerialNumber will
try to retrieve the serial number from android.os.SystemProperties
in two places: ril.serialnumber and sys.serialnumber

This seems to work for a selection of Samsung Android tablets