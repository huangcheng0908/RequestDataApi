//
//  ViewController.m
//  RequestDataApi
//
//  Created by mac on 16/1/8.
//  Copyright (c) 2016年 黄城. All rights reserved.
//

#import "RequsetHttpClass.h"
#import "AFHCProgressHub.h"

@implementation RequsetHttpClass

- (void)startAsync
{
    [AFHCProgressHub showWithStatus:@"网络加载中……"];
    self.data = [[NSMutableData alloc]init];
    self.connection = [NSURLConnection connectionWithRequest:self delegate:self];
}
- (void)cancel
{
    [self.connection cancel];
}
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSHTTPURLResponse * URLResponse = (NSHTTPURLResponse *)response;
    NSDictionary * headers = [URLResponse allHeaderFields];
    NSLog(@"🐔=%@",headers);
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [self.data appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    self.block(_data);
    [AFHCProgressHub increateProgress];
}
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    [AFHCProgressHub showErrorWithStatus:@"网络异常！"];
}
@end
