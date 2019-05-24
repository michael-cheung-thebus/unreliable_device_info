#import "UnreliableDeviceInfoPlugin.h"
#import <unreliable_device_info/unreliable_device_info-Swift.h>

@implementation UnreliableDeviceInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUnreliableDeviceInfoPlugin registerWithRegistrar:registrar];
}
@end
