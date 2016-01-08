//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AFHCProgressHub : NSObject

+(void)showWithStatus:(NSString *)Status;
+ (void)showSuccessWithStatus:(NSString *)Status;
+ (void)showErrorWithStatus:(NSString *)Status;
+(void)increateProgress;

@end
