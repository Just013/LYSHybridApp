//
//  ViewController.swift
//  NativeForReactDemo
//
//  Created by lys013rt on 2019/11/22.
//  Copyright © 2019 CoderLi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        self.view.backgroundColor = UIColor.white
        self.title = "原生页面"
        
    }
    
    @IBAction func push_rn(_ sender: Any) {
        var jsCodeLocation = URL.init(string: "")
        #if DEBUG
//        jsCodeLocation = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "index", fallbackResource: nil)
        jsCodeLocation = RCTBundleURLProvider.sharedSettings()?.jsBundleURL(forBundleRoot: "react-native/pages/hello", fallbackResource: nil)
        #else
        jsCodeLocation = Bundle.main.url(forResource: "bundle/index", withExtension: "jsbundle")
          
        #endif
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

