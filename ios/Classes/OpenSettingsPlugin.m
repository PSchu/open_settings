#import "OpenSettingsPlugin.h"
#import <open_settings/open_settings-Swift.h>

@implementation OpenSettingsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOpenSettingPlugin registerWithRegistrar:registrar];
}
@end