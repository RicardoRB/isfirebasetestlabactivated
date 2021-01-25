#import "IsFirebaseTestLabActivatedPlugin.h"
#if __has_include(<is_firebase_test_lab_activated/is_firebase_test_lab_activated-Swift.h>)
#import <is_firebase_test_lab_activated/is_firebase_test_lab_activated-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "is_firebase_test_lab_activated-Swift.h"
#endif

@implementation IsFirebaseTestLabActivatedPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIsFirebaseTestLabActivatedPlugin registerWithRegistrar:registrar];
}
@end
