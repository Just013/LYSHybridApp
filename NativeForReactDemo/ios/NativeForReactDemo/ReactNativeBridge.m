//
//  ReactNativeBridge.m
//  NativeForReactDemo
//
//  Created by lys013rt on 2019/11/22.
//  Copyright © 2019 CoderLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import <React/RCTRootView.h>

@interface RCT_EXTERN_MODULE(BridgeManager, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name);

@end


