//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RequsetHttpClass.h"

typedef void(^Completion)(NSDictionary * jsonDict);

typedef NS_ENUM(NSInteger, RequestMethodType){
    RequestMethodTypePost = 1,
    RequestMethodTypeGet = 2
};

@interface RequestDataApi : NSObject

+(RequestDataApi *)shareRequestApi;
-(id)requestWihtMethod:(RequestMethodType)Method weatherData:(NSString *)Urlstr param:(NSString *)param block:(Completion)block;

@end
