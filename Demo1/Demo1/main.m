//
//  main.m
//  Demo1
//
//  Created by Dengbin on 2019/3/13.
//  Copyright © 2019 DengBin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

__attribute__((constructor)) void CPFunc(){
    printf("C++Func1");
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
