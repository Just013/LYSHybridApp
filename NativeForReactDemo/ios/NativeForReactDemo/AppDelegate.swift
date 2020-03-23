//
//  AppDelegate.swift
//  NativeForReactDemo
//
//  Created by lys013rt on 2019/11/22.
//  Copyright © 2019 CoderLi. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, RCTBridgeDelegate {
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        #if DEBUG
        return RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "ModuleA", fallbackResource: nil)
//        return URL(string: "http://localhost:8081/react-native/ModuleA.bundle?platform=ios")
        #else
        return Bundle.main.url(forResource: "main", withExtension: "jsbundle")
        #endif
    }
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        let bridge = RCTBridge.init(delegate: self, launchOptions: launchOptions)
//        let rootView = RCTRootView.init(bridge: bridge, moduleName: "ModuleA", initialProperties: nil)
//        rootView?.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//        let rootVC = UIViewController()
//        rootVC.view = rootView
//        window?.rootViewController = rootVC
//        window?.makeKeyAndVisible()
        
//        let rootView = RCTRootView.init(bundleURL: URL(string: "http://localhost:8081/react-native/ModuleA.bundle?platform=ios"), moduleName: "ModuleA", initialProperties: nil, launchOptions: nil)
//        let rootVC = SecondViewController()
//        rootVC.view = rootView
//        window = UIWindow.init(frame: UIScreen.main.bounds)
//        window?.rootViewController = rootVC
//        window?.makeKeyAndVisible()
        
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! ViewController
        let nav = UINavigationController(rootViewController: vc)
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        return true
    }
    
    
}

