//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^FinishLoadBlock)(NSData *);

@interface RequsetHttpClass : NSMutableURLRequest <NSURLConnectionDataDelegate>

@property (nonatomic, retain) NSMutableData *data;
@property (nonatomic, retain) NSURLConnection *connection;
@property (nonatomic, copy)FinishLoadBlock block;

- (void)startAsync;
- (void)cancel;

@end
