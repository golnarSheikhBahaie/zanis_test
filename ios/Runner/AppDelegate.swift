import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
    let channel = FlutterMethodChannel(name: "samples.flutter.dev/randomNumber",
                                              binaryMessenger: controller.binaryMessenger)
    channel.setMethodCallHandler({
      [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
      // This method is invoked on the UI thread.
      guard call.method == "createRandomNumber" else {
        result(FlutterMethodNotImplemented)
        return
      }
      self?.generateRandomNumber(result: result)
    })

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  private func generateRandomNumber(result: FlutterResult) {
    let randomInt = Int.random(in: 0..<100)
    result(Int(randomInt))
  }
}
