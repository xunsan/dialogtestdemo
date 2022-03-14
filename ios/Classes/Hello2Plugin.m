#import "Hello2Plugin.h"
#if __has_include(<hello2/hello2-Swift.h>)
#import <hello2/hello2-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hello2-Swift.h"
#endif

@implementation Hello2Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHello2Plugin registerWithRegistrar:registrar];
}
@end
