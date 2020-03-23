//
//  ReactNativeManager.swift
//  NativeForReactDemo
//
//  Created by lys013rt on 2019/11/22.
//  Copyright © 2019 CoderLi. All rights reserved.
//

import UIKit
import React

/// bridge 方法
@objc(BridgeManager)
class ReactNativeManager: NSObject, RCTBridgeDelegate {
    var bridge: RCTBridge!
    func sourceURL(for bridge: RCTBridge!) -> URL! {
        self.bridge = bridge
        var jsCodeLocation = URL.init(string: "")
        #if DEBUG
        jsCodeLocation = URL(string: "http://localhost:8081/react-native/ModuleA.bundle?platform=ios")
        #else
        jsCodeLocation = Bundle.main.url(forResource: "ModuleA", withExtension: "jsbundle")
        #endif
        return jsCodeLocation
    }
    
    // MARK: - js 调用 原生 方法  - normal
        @objc(addEvent:)
        func addEvent(name: String) -> Void {
            print(name)
            DispatchQueue.main.async {
                
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "pushToSecondViewController"), object: nil, userInfo: nil)
//                 self.navigationController?.popViewController(animated: true)
    //            let vc = ThirdViewController()
    //            self.navigationController?.pushViewController(vc, animated: true)
            }
            
        }
    

}
