import Flutter
import UIKit

public class SwiftIsFirebaseTestLabActivatedPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_firebase_test_lab_activated", binaryMessenger: registrar.messenger())
    let instance = SwiftIsFirebaseTestLabActivatedPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result(false)
  }
}
