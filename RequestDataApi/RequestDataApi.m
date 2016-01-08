//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import "RequestDataApi.h"

@implementation RequestDataApi

+(RequestDataApi *)shareRequestApi
{
    static RequestDataApi * requestApi = nil;
    static dispatch_once_t data_api;
    
    dispatch_once(&data_api, ^{
        requestApi = [[RequestDataApi alloc]init];
    });
    return requestApi;
}

-(id)requestWihtMethod:(RequestMethodType)Method weatherData:(NSString *)Urlstr param:(NSString *)param block:(Completion)block
{
    NSLog(@"🐑🐔🐴=%@",Urlstr);
    RequsetHttpClass * Requset = [RequsetHttpClass requestWithURL:[NSURL URLWithString:Urlstr]];
    [Requset setTimeoutInterval:30.0f];
    switch (Method)
    {
        case RequestMethodTypeGet:
            [Requset setHTTPMethod:@"GET"];
            break;
        case RequestMethodTypePost:
            [Requset setHTTPMethod:@"POST"];
            Requset.HTTPBody = [param dataUsingEncoding:NSUTF8StringEncoding];
            break;
        default:
            break;
    }
    [Requset startAsync];
    
    Requset.block = ^(NSData * data)
    {
        if (data != nil)
        {
            NSError * error = nil;
            id ret = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
            block(ret);
        }
    };
    return nil;
}
@end
