//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import "ViewController.h"
#import "RequestDataApi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)Requset:(UIButton *)sender
{
    [[RequestDataApi shareRequestApi]requestWihtMethod:RequestMethodTypePost weatherData:@"http://www.kbwsc.com/ecmobile/?url=region" param:nil block:^(id jsonDict)
    {
        NSLog(@"jsonDict = ***** %@ *****",jsonDict);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
