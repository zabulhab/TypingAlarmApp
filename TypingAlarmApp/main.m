//
//  main.m
//  TypingAlarmApp
//
//  Created by School on 4/9/21.
//  Copyright © 2021 Zena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
     return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
