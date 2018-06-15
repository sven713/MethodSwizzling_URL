//
//  ViewController.m
//  MethodSwizzling_URL
//
//  Created by sve on 2018/6/15.
//  Copyright © 2018年 sve. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"http://baidu.com/中文"];
    NSLog(@"%@",url);
    
}

@end
