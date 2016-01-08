//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import "AFHCProgressHub.h"
#import "SVProgressHUD.h"


@implementation AFHCProgressHub

+(void)show
{
    [SVProgressHUD show];
}
+ (void)showInfoWithStatus:(NSString *)Status
{
    [SVProgressHUD showInfoWithStatus:Status];
}

+(void)showWithProgressStatus:(NSString *)status
{
    [SVProgressHUD showProgress:SVProgressHUDStyleDark status:status];
}
+ (void)showSuccessWithStatus:(NSString *)Status
{
    [SVProgressHUD showSuccessWithStatus:Status];
}

+ (void)showErrorWithStatus:(NSString *)Status
{
    [SVProgressHUD showErrorWithStatus:Status];
}
+(void)increateProgress
{
    [SVProgressHUD dismiss];
}
+(void)showWithStatus:(NSString *)Status
{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeNone];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD showWithStatus:Status];
}

@end
