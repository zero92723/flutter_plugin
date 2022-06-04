#import "NbaFlutterPlugin.h"
#if __has_include(<nba_flutter_plugin/nba_flutter_plugin-Swift.h>)
#import <nba_flutter_plugin/nba_flutter_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "nba_flutter_plugin-Swift.h"
#endif

@implementation NbaFlutterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNbaFlutterPlugin registerWithRegistrar:registrar];
}
@end
