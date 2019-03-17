//
//  ViewController.m
//  Demo1
//
//  Created by Dengbin on 2019/3/13.
//  Copyright © 2019 DengBin. All rights reserved.
//

#import "ViewController.h"

static const NSString *ocString = @"myOCString";
static const char *cString = "myCString";

@interface ViewController () @end

void myCFuncA(int a){
    printf("myCFuncAString:%d",a);
}

void myCFunc(){
    printf("myCFuncString");
}


__attribute__((constructor)) void CPFunc3(){
    printf("C++Func2");
}

@implementation ViewController


__attribute__((constructor)) void CPFunc2(){
    printf("C++Func3");
}
+ (void)load {
    NSLog(@"");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    myCFunc();
    myCFuncA(1);
    [self myOCFuncA:1];
    [self myOCFunc];
}

- (void)myOCFuncA:(NSInteger)a{
    NSLog(@"%s",__func__);
    NSLog(@"myOCFuncAString:%s",cString);
}

- (void)myOCFunc{
    NSLog(@"%s",__func__);
    NSLog(@"myOCFuncString:%s",cString);
}

@end
