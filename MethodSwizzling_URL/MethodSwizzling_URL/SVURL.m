//
//  SVURL.m
//  MethodSwizzling_URL
//
//  Created by sve on 2018/6/15.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "SVURL.h"
#import <objc/runtime.h>
@implementation SVURL

+(void)load {
    Method m1 = class_getClassMethod(self, @selector(URLWithString:));
    
    Method m2 = class_getClassMethod(self, @selector(SVURLWithString:));
    
    method_exchangeImplementations(m1, m2);
}

+(instancetype)SVURLWithString:(NSString *)string {
    SVURL *url = [SVURL SVURLWithString:string]; // 交换的方法里面调用自身,不能调用被交换的方法
    if (!url) {
        NSLog(@"url不存在");
    }
    
    return url;
}

@end
