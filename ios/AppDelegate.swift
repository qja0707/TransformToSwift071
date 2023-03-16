//
//  AppDelegate.swift
//  TransformToSwift071
//
//  Created by Gyubeom Park on 2023/03/12.
//

import Foundation

@UIApplicationMain
class AppDelegate: RCTAppDelegate{
  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    self.moduleName = "TransformToSwift071"
    self.initialProps = NSDictionary() as! [AnyHashable : Any]
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
  
  override func sourceURL(for bridge: RCTBridge!) -> URL! {
#if DEBUG
    return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
#else
    return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
#endif
  }
  
  
#if RCT_NEW_ARCH_ENABLED
  override func concurrentRootEnabled() -> Bool {
    return true
  }
#endif
}


